import 'package:flutter/material.dart';
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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Store",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CustomSearchBar()
        ],
      )),
      bottomNavigationBar: BottomNavBar(navigationProvider: navigationProvider),
    );
  }
}
