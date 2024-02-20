import 'package:flutter/material.dart';
import 'package:pet_shop_application/mock_data.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.petID});
  final int petID;

  @override
  Widget build(BuildContext context) {
    Pet matchedPet = PetList.firstWhere((pet) => pet.ID == petID);

    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (currentPage) {
          if (currentPage.primaryVelocity! > 0) {
            Navigator.of(context).pop();
          }
        },
        child: Column(children: [
          Image.network(
            matchedPet.mainImageURL,
          )
        ]),
      ),
    );
  }
}
