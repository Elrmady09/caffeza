import 'package:flutter/material.dart';
import '../../../core/widgets/General Text.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GeneralText(
      text:
      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk...",
      color: Colors.grey[700]!,
      sizetext: size.width * 0.035,
    );
  }
}