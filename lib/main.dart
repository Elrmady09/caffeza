import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/home/logic/home_provider.dart';
import 'features/onboarding/logic/onboarding_provider.dart';
import 'app.dart';
import 'features/order/logic/order_provider.dart';
import 'features/product_detail/logic/product_detail_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OnboardingProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => DetailProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
