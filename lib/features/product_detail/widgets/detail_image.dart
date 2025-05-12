import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(size.width * 0.04),
      child: Image.asset(
        "assets/images/home/Image card 1.png",
        width: double.infinity,
        height: size.height * 0.25,
        fit: BoxFit.cover,
      ),
    );
  }
}