import 'package:flutter/material.dart';

class OrderProvider with ChangeNotifier {
  int _quantity = 1;

  int get quantity => _quantity;

  void increaseQuantity() {
    _quantity++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners();
    }
  }

  void resetQuantity() {
    _quantity = 1;
    notifyListeners();
  }
}