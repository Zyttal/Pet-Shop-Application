import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_shop_application/mock_data.dart';
import 'package:pet_shop_application/pages/details_page.dart';
import 'package:pet_shop_application/providers/cart_provider.dart';

class GridList extends StatelessWidget {
  const GridList({super.key, required this.cartProvider});

  final CartProvider cartProvider;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: PetList.length,
      itemBuilder: (context, index) {
        final pet = PetList[index];
        return Container(
          width: 170,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(49, 94, 94, 94),
                  offset: Offset(0, 2),
                  blurRadius: 2,
                  spreadRadius: 0,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 100,
                width: 145,
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(14)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(14),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(petID: pet.ID)))
                  },
                  child: Image.network(
                    pet.peekImageURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                pet.breed,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${pet.price.toString()}",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Theme.of(context).highlightColor),
                  ),
                  InkWell(
                    onTap: () => {cartProvider.add(pet)},
                    child: Icon(Icons.shopping_cart,
                        size: 12, color: Theme.of(context).highlightColor),
                  )
                ],
              )
            ]),
          ),
        );
      },
    );
  }
}
