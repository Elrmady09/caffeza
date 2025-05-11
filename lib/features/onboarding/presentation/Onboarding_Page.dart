import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_texts.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/widgets/primary_button.dart';
import '../logic/onboarding_provider.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(AppImages.coffeeCup, height: 300),
            const SizedBox(height: 20),
            Text(
              AppTexts.welcomeTitle,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                AppTexts.welcomeSubtitle,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
              child: PrimaryButton(
                text: "Get Started",
                onPressed: () {
                  context.read<OnboardingProvider>().completeOnboarding(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}