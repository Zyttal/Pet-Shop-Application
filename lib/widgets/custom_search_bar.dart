import 'package:flutter/material.dart';
import 'package:pet_shop_application/mock_data.dart';
import 'package:pet_shop_application/pages/details_page.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final SearchController searchController = SearchController();
  // ignore: unused_field
  List<Pet> filteredPets = [];

  @override
  void initState() {
    super.initState();
    filteredPets = PetList;
    searchController.addListener(onSearchChanged);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void onSearchChanged() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredPets =
          PetList.where((pet) => pet.breed.toLowerCase().contains(query))
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SearchAnchor.bar(
          isFullScreen: true,
          searchController: searchController,
          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return filteredPets.map((pet) {
              return ListTile(
                title: Text(pet.breed),
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(petID: pet.ID)));
                }),
              );
            }).toList();
          }),
    );
  }
}
