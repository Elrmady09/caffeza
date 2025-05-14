import 'package:caffeza/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/space.dart';

class OrderProductSummary extends StatelessWidget {
  final String image;
  final String name;
  final String type;
  final double price;
  final int quantity;

  const OrderProductSummary({
    super.key,
    required this.image,
    required this.name,
    required this.type,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            image,
            width: size.width * 0.18,
            height: size.width * 0.18,
            fit: BoxFit.cover,
          ),
        ),
        const WidthSpace(space: 0.04),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.04,
                )),
            const HeightSpace(space: 0.005),
            Text(type,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width * 0.035,
                )),
            const HeightSpace(space: 0.005),
            Text('\$${price.toStringAsFixed(2)} x$quantity',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: size.width * 0.036,
                  fontWeight: FontWeight.w600,
                )),
          ],
        )
      ],
    );
  }
}