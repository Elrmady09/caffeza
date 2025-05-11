import 'package:caffeza/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/space.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';


class CoffeePromoCard extends StatelessWidget {
  const CoffeePromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.025),
      padding: EdgeInsets.symmetric(horizontal:size.width * 0.06,vertical:size.height * 0.025 ),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(size.width * 0.05),
        image: DecorationImage(
            image: AssetImage(AppImages.ImageBanner),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15), // 🔹 لون الظل
            blurRadius: 10, // 🔹 مدى نعومة الظل
            spreadRadius: 1, // 🔹 مدى انتشار الظل
            offset: Offset(0, 2), // 🔹 موقع الظل
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02,vertical: size.height * 0.005),
                //height: size.height * 0.03,
                decoration: BoxDecoration(
                  color: AppColors.red,
                  borderRadius: BorderRadius.circular(size.width * 0.02),
                ),
                child: Center(
                  child: GeneralText(
                    text: "Promo",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    sizetext: size.width * 0.04,
                  ),
                ),
              ),
              HeightSpace(space: 0.008),
              SizedBox(
                width: size.width * 0.44,
                height: size.height * 0.12,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0 ,
                      top: size.height * 0.025,
                      child: Container(
                        color: Colors.black,
                        width: size.width * 0.43,
                        height: size.height * 0.04,
                      ),
                    ),
                    Positioned(
                      left: 0 ,
                      bottom: size.height * 0,
                      child: Container(
                        color: Colors.black,
                        width: size.width * 0.34,
                        height: size.height * 0.04,
                      ),
                    ),
                    GeneralText(
                      text: "Buy one get",
                      color: Colors.white,
                      sizetext: size.width * 0.079,
                      fontWeight: FontWeight.bold,
                    ),
                    GeneralText(
                      padding: EdgeInsets.only(top: size.height * 0.058),
                      text: "one FREE",
                      color: Colors.white,
                      sizetext: size.width * 0.079,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}