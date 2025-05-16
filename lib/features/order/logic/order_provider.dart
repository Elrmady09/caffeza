import 'package:flutter/material.dart';

import '../../product_detail/data/models/product_model.dart';
class OrderProvider with ChangeNotifier {
  ProductModel? _orderedCoffee;
  int _quantity = 1;
  final double _deliveryFee = 1.0;

  ProductModel? get orderedCoffee => _orderedCoffee;
  int get quantity => _quantity;
  double get deliveryFee => _deliveryFee;

  double get total {
    final price = double.tryParse(_orderedCoffee?.price ?? '0') ?? 0;
    return price + _deliveryFee;
  }

  void setOrderCoffee(ProductModel coffee) {
    _orderedCoffee = coffee;
    _quantity = 1;
    notifyListeners();
  }

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
}