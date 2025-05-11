import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class OnboardingProvider with ChangeNotifier {
  void completeOnboarding(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.home);
  }
}