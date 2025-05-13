import 'package:flutter/material.dart';

class DetailFeatureIcon extends StatelessWidget {
  final String iconPath;

  const DetailFeatureIcon({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      width: size.width * 0.12,
      height: size.height * 0.06,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(size.width * 0.03),
        image: DecorationImage(
          scale: 0.8,
          image: AssetImage(iconPath),
        ),
      ),
    );
  }
}