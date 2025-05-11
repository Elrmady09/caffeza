import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'features/onboarding/presentation/onboarding_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      theme: ThemeData.dark(),
      initialRoute: AppRoutes.onboarding,
      routes: {
        AppRoutes.onboarding: (_) => const OnboardingPage(),
        AppRoutes.home: (_) => const Placeholder(), // لاحقاً تستبدلها بصفحة حقيقية
      },
    );
  }
}