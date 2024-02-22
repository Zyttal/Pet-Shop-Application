import 'package:flutter/material.dart';
import 'package:pet_shop_application/providers/cart_provider.dart';
import 'package:pet_shop_application/providers/navigation_provider.dart';
import 'package:pet_shop_application/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      body: Column(children: [
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: cartProvider.pets.length,
          itemBuilder: (context, index) {
            final pet = cartProvider.pets[index];
            return ListTile(
                leading: Image.network(
                  pet.peekImageURL,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(pet.breed),
                subtitle: Text('${pet.weight} kg - ${pet.height} cm'),
                trailing: Text('\$${pet.price.toStringAsFixed(2)}'));
          },
        )
      ]),
      bottomNavigationBar: BottomNavBar(navigationProvider: navigationProvider),
    );
  }
}
