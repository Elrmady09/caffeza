import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';

class DetailPriceButton extends StatelessWidget {
  const DetailPriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GeneralText(
          text: "\$ 4.53",
          fontWeight: FontWeight.bold,
          sizetext: size.width * 0.06,
          color: AppColors.black,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02,
              horizontal: size.width * 0.1,
            ),
          ),
          onPressed: () {},
          child: const Text("Buy Now"),
        ),
      ],
    );
  }
}