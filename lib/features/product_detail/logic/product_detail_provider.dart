
import 'package:flutter/material.dart';
import '../data/models/product_model.dart';

class DetailProvider extends ChangeNotifier {
  // ✅ المنتج المختار
  ProductModel? _selectedCoffee;
  ProductModel get selectedCoffee => _selectedCoffee!;
  void setSelectedCoffee(ProductModel coffee) {
    _selectedCoffee = coffee;
    notifyListeners();
  }

  void clearSelectedCoffee() {
    _selectedCoffee = null;
    notifyListeners();
  }

  // ✅ الحجم المختار للقهوة
  int _selectedSizeIndex = 1; // 0 = S, 1 = M, 2 = L
  int get selectedSizeIndex => _selectedSizeIndex;

  void changeSize(int index) {
    _selectedSizeIndex = index;
    notifyListeners();
  }

  // ✅ حالة المفضلة
  bool _isFavorite = false;
  bool get isFavorite => _isFavorite;

  void toggleFavorite() {
    _isFavorite = !_isFavorite;
    notifyListeners();
  }
}