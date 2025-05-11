import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  // الموقع الحالي
  String _location = "Bilzen, Tanjungbalai";
  String get location => _location;

  void updateLocation(String newLocation) {
    _location = newLocation;
    notifyListeners();
  }

  // التصنيف المحدد
  int selectedCategoryIndex = 0;

  void changeCategory(int index) {
    selectedCategoryIndex = index;
    notifyListeners();
  }

  // ✅ مؤشر التنقل السفلي
  int selectedIndex = 0;

  void changeTab(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}