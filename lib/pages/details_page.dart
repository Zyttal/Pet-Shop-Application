import 'package:flutter/material.dart';
import 'package:pet_shop_application/mock_data.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.petID});
  final int petID;

  @override
  Widget build(BuildContext context) {
    Pet matchedPet = PetList.firstWhere((pet) => pet.ID == petID);
    PetStore matchedStore = PetStoreList.firstWhere(
        (petStore) => matchedPet.petStoreID == petStore.ID);

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
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
              Positioned(
                  bottom: -50,
                  left: (screenWidth - 360) / 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Container(
                      width: screenWidth - 50,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(50, 0, 0, 0),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 0,
                            )
                          ]),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                matchedPet.breed,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${matchedStore.name} · ${matchedStore.distance.toString()}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
