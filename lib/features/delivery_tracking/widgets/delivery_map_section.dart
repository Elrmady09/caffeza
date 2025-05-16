import 'package:caffeza/core/constants/app_colors.dart';
import 'package:caffeza/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class DeliveryMapSection extends StatelessWidget {
  const DeliveryMapSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Image.asset(
            AppImages.ImageMap, // ضع الصورة أو Google Map هنا
            fit: BoxFit.cover,
            width: size.width,
            height: size.height,
          ),
          Positioned(
            top: size.height * 0.35,
            right: size.width * 0.08,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: const Icon(Icons.my_location, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}