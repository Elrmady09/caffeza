import 'package:flutter/material.dart';

class DeliveryTrackingProvider extends ChangeNotifier {
  String deliveryTime = "10 minutes left";
  String deliveryAddress = "Jl. Kpg Sutoyo";

  void updateDeliveryStatus(String time, String address) {
    deliveryTime = time;
    deliveryAddress = address;
    notifyListeners();
  }
}