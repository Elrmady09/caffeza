import 'package:flutter/material.dart';

import '../../../core/widgets/General Text.dart';

class CompontsPaymentSummary extends StatelessWidget {
  const CompontsPaymentSummary({Key? key, required this.text, required this.price, required this.widget}) : super(key: key);
  final String text;
  final String price;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        GeneralText(
          text: text,
          color: Colors.black,
          fontWeight: FontWeight.w500,
          sizetext: size.width * 0.038,
        ),
        Spacer(),
        widget,
        GeneralText(
          text: price,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          sizetext: size.width * 0.038,
        ),

      ],
    );
  }
}
