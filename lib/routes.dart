import 'package:flutter/material.dart';
import 'package:pet_shop_application/pages/cart_page.dart';
import 'package:pet_shop_application/pages/details_page.dart';
import 'package:pet_shop_application/pages/store_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (context) => StorePage(),
    '/details_page': (context) => DetailsPage(
          petID: 0,
        ),
    '/cart_page': (context) => CartPage()
  };
}
