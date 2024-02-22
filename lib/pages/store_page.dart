import 'package:flutter/material.dart';
import 'package:pet_shop_application/providers/cart_provider.dart';
import 'package:pet_shop_application/providers/navigation_provider.dart';
import 'package:pet_shop_application/widgets/bottom_nav_bar.dart';
import 'package:pet_shop_application/widgets/custom_search_bar.dart';
import 'package:pet_shop_application/widgets/grid_list.dart';
import 'package:provider/provider.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Store",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomSearchBar(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GridList(cartProvider: cartProvider),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(navigationProvider: navigationProvider),
    );
  }
}
