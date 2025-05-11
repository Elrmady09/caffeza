import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/home/logic/home_provider.dart';
import 'features/onboarding/logic/onboarding_provider.dart';
import 'app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OnboardingProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
