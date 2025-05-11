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
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      padding: EdgeInsets.all(size.width * 0.04),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(size.width * 0.05),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GeneralText(
                text: "Promo",
                color: Colors.white.withOpacity(0.7),
                sizetext: size.width * 0.035,
              ),
              HeightSpace(space: 0.008),
              GeneralText(
                text: "Buy one get\none FREE",
                color: Colors.white,
                sizetext: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(size.width * 0.04),
            child: Image.asset(
              "assets/images/coffee_promo.png",
              width: size.width * 0.2,
              height: size.width * 0.2,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}