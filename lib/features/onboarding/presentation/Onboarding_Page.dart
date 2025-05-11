import 'package:caffeza/core/widgets/space.dart';
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
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBackground,
        body: SafeArea(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height  * 0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.coffeeCup),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: size.width,
                    height: size.height * 0.27,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff181818), Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000).withOpacity(0.8), // 🔹 لون الظل
                          blurRadius: 20, // 🔹 مدى نعومة الظل
                          spreadRadius: 30, // 🔹 مدى انتشار الظل
                          offset: Offset(0, 4), // 🔹 موقع الظل
                        ),
                      ],

                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: size.width,
                    height: size.height * 0.37,
                    child: Column(
                      children: [
                        HeightSpace(space: 0.025),
                        Text(
                          AppTexts.welcomeTitle,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        HeightSpace(space: 0.017),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width * 0.056),
                          child: Text(
                            AppTexts.welcomeSubtitle,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white70),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: size.width * 0.056, vertical: size.height * 0.028),
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
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}