import 'package:flutter/material.dart';
import 'package:pet_shop_application/mock_data.dart';
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
      body: SingleChildScrollView(
        child: Column(children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cartProvider.pets.length,
            itemBuilder: (context, index) {
              final pet = cartProvider.pets[index];
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
                  subtitle: Text(petStore.name),
                  trailing: Column(
                    children: [
                      InkWell(
                        child: const Icon(Icons.delete_outline_sharp),
                        onTap: () => {cartProvider.remove(pet)},
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$${pet.price.toStringAsFixed(2)}',
                        style: TextStyle(
                            color: Theme.of(context).highlightColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ));
            },
          )
        ]),
      ),
      bottomNavigationBar: BottomNavBar(navigationProvider: navigationProvider),
    );
  }
}
