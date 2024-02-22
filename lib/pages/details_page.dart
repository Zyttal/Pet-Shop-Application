import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_shop_application/mock_data.dart';
import 'package:pet_shop_application/providers/navigation_provider.dart';
import 'package:pet_shop_application/widgets/bottom_nav_bar.dart';
import 'package:pet_shop_application/widgets/description_card.dart';
import 'package:pet_shop_application/widgets/pet_properties_card.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.petID});
  final int petID;

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    Pet matchedPet = PetList.firstWhere((pet) => pet.ID == petID);
    PetStore matchedStore = PetStoreList.firstWhere(
        (petStore) => matchedPet.petStoreID == petStore.ID);

    double screenWidth = MediaQuery.of(context).size.width;
    var data = "Weight";
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onHorizontalDragEnd: (currentPage) {
            if (currentPage.primaryVelocity! > 0) {
              Navigator.of(context).pop();
            }
          },
          child: Column(children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  matchedPet.mainImageURL,
                  width: screenWidth,
                  fit: BoxFit.cover,
                  height: 400,
                ),
                Description_Card(
                    screenWidth: screenWidth,
                    matchedPet: matchedPet,
                    matchedStore: matchedStore),
              ],
            ),
            SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.pets,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "About ${matchedPet.breed}",
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PetPropertiesCard(
                    property: "Weight",
                    propertyValue: "${matchedPet.weight.toString()} kg"),
                PetPropertiesCard(
                    property: "Height",
                    propertyValue: "${matchedPet.height.toString()} cm"),
                PetPropertiesCard(
                    property: "Color", propertyValue: matchedPet.color)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                matchedPet.description,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xFFA1A1A1),
                    fontWeight: FontWeight.w300),
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavBar(navigationProvider: navigationProvider),
    );
  }
}
