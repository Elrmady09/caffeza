import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../../../core/widgets/space.dart';
class CompontsButtounDeliver extends StatelessWidget {
  const CompontsButtounDeliver({Key? key, this.ontap, required this.text, this.color, this.colortext}) : super(key: key);
  final VoidCallback? ontap;
  final String text;
  final Color? color;
  final Color? colortext;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.156),
        height: size.height * 0.05,
        decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(size.width * 0.02),
        ),
        child: Center(
          child: GeneralText(
            text: text,
            sizetext: size.width * 0.03,
            fontWeight: FontWeight.w700,
            color: colortext ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
