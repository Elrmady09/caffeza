import 'package:flutter/material.dart';

import '../../../core/widgets/space.dart';

class OrderPaymentSummary extends StatelessWidget {
  final double productPrice;
  final double deliveryFee;

  const OrderPaymentSummary({
    super.key,
    required this.productPrice,
    required this.deliveryFee,
  });

  double get total => productPrice + deliveryFee;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Widget buildRow(String title, String value, {bool isBold = false}) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: size.width * 0.036,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
              color: Colors.grey[700],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: size.width * 0.036,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        buildRow("Price", '\$${productPrice.toStringAsFixed(2)}'),
        const HeightSpace(space: 0.01),
        buildRow("Delivery Fee", '\$${deliveryFee.toStringAsFixed(2)}'),
        const HeightSpace(space: 0.01),
        const Divider(thickness: 1),
        const HeightSpace(space: 0.01),
        buildRow("Total", '\$${total.toStringAsFixed(2)}', isBold: true),
      ],
    );
  }
}