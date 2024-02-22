import 'package:flutter/material.dart';
import 'package:pet_shop_application/providers/navigation_provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.navigationProvider,
  });

  final NavigationProvider navigationProvider;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).highlightColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: navigationProvider.selectedIndex,
        onTap: (int index) {
          navigationProvider.updateSelectedIndex(index);
          switch (index) {
            case 0:
              break;
            case 1:
              Navigator.pushNamed(context, '/');
              break;
            case 2:
              Navigator.pushNamed(context, '/cart_page');
              break;
            case 3:
              break;
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "Catalog"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: "Profile")
        ]);
  }
}
