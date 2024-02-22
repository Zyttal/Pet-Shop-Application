import 'package:flutter/material.dart';
import 'package:pet_shop_application/mock_data.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({
    super.key,
    required this.screenWidth,
    required this.matchedPet,
    required this.matchedStore,
  });

  final double screenWidth;
  final Pet matchedPet;
  final PetStore matchedStore;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: -50,
        left: 10,
        right: 10,
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
                    color: Color.fromARGB(49, 94, 94, 94),
                    offset: Offset(0, 2),
                    blurRadius: 2,
                    spreadRadius: 0,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          matchedPet.breed,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Row(
                          children: [
                            Text(
                              "${matchedStore.name} · ${matchedStore.distance.toString()}m",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Theme.of(context).highlightColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Icon(
                      Icons.fullscreen,
                      color: Colors.white,
                    )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
