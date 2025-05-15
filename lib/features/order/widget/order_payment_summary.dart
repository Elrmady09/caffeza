import 'package:caffeza/core/widgets/General%20Text.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/space.dart';
import 'componts_payment_summary.dart';

class OrderPaymentSummary extends StatelessWidget {


  const OrderPaymentSummary({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralText(
          padding: EdgeInsets.only(bottom: size.height * 0.02 ),
          text: 'Payment Summary',
          color: Colors.black,
          fontWeight: FontWeight.w700,
          sizetext: size.width * 0.047,
        ),
        CompontsPaymentSummary(text: 'Price', price: '\$ 4.53', widget: SizedBox(),),
        HeightSpace(space: 0.01),
        CompontsPaymentSummary(
          text: 'Delivery Fee',
          price: '\$ 1.0',
          widget:GeneralText(
            padding: EdgeInsets.only(right: size.width * 0.02),
            text: '\$ 2.0',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            sizetext: size.width * 0.035,
          ) ,
        ),
      ],
    );
  }
}