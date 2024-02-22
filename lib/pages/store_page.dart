import 'package:flutter/material.dart';
import 'package:pet_shop_application/mock_data.dart';
import 'package:pet_shop_application/pages/details_page.dart';
import 'package:pet_shop_application/providers/navigation_provider.dart';
import 'package:pet_shop_application/widgets/bottom_nav_bar.dart';
import 'package:pet_shop_application/widgets/custom_search_bar.dart';
import 'package:provider/provider.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Store",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomSearchBar(),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: PetList.length,
              itemBuilder: (context, index) {
                final pet = PetList[index];
                final petStore = PetStoreList.firstWhere(
                    (store) => store.ID == pet.petStoreID);
                return ListTile(
                    leading: Image.network(
                      pet.peekImageURL,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(pet.breed),
                    subtitle: Text('${pet.weight} kg - ${pet.height} cm'),
                    trailing: Text('\$${pet.price.toStringAsFixed(2)}'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsPage(petID: pet.ID)));
                    });
              },
            )
          ],
        ),
      )),
      bottomNavigationBar: BottomNavBar(navigationProvider: navigationProvider),
    );
  }
}
