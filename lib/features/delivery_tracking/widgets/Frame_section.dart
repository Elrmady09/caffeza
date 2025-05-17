import 'package:caffeza/core/constants/app_colors.dart';
import 'package:flutter/material.dart';


class FrameSection extends StatelessWidget {
  const FrameSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.015),
        height:size.height * 0.008 ,
        decoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.circular(size.width * 0.01),
        ),
      ),
    );
  }
}
