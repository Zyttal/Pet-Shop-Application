import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_shop_application/mock_data.dart';
import 'package:pet_shop_application/pages/details_page.dart';
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

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Store",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomSearchBar(),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: GridList(),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(navigationProvider: navigationProvider),
    );
  }
}
