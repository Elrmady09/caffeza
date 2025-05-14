import 'package:flutter/material.dart';
import 'features/home/presentation/home_page.dart';
import 'features/order/presentation/order_page.dart';
import 'features/product_detail/presentation/product_detail_page.dart';
import 'routes/app_routes.dart';
import 'features/onboarding/presentation/onboarding_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee App',
      theme: ThemeData.dark(),
      initialRoute: AppRoutes.onboarding,
      routes: {
        AppRoutes.onboarding: (_) => const OnboardingPage(),
        AppRoutes.home: (_) => const HomePage(), // لاحقاً تستبدلها بصفحة حقيقية
        AppRoutes.productdetail: (_) => const DetailPage(),
        AppRoutes.order: (_) => const OrderPage(),
      },
    );
  }
}