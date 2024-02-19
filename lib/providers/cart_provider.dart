import 'package:flutter/material.dart';
import 'package:pet_shop_application/mock_data.dart';

class CartProvider extends ChangeNotifier {
  final List<Pet> _petList = [];

  List<Pet> get pets => _petList;

  void add(Pet pet) {
    _petList.add(pet);
    notifyListeners();
  }

  void remove(Pet pet) {
    _petList.remove(pet);
    notifyListeners();
  }

  void removeAll() {
    _petList.clear();
    notifyListeners();
  }

  double getTotalPrice() {
    return _petList.fold(0, (previousValue, pet) => previousValue + pet.price);
  }
}
