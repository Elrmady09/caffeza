import 'package:caffeza/core/widgets/General%20Text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/space.dart';
import '../logic/order_provider.dart';
import 'componts_payment_summary.dart';

class OrderPaymentSummary extends StatelessWidget {
  const OrderPaymentSummary({super.key,});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orderProvider = context.watch<OrderProvider>();
    final product = orderProvider.orderedCoffee;

    final price = double.tryParse(product?.price ?? '0') ?? 0;
    final deliveryFee = orderProvider.deliveryFee;


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
        CompontsPaymentSummary(text: 'Price', price: '\$ ${price.toStringAsFixed(2)}', widget: SizedBox(),),
        HeightSpace(space: 0.01),
        CompontsPaymentSummary(
          text: 'Delivery Fee',
          price: '\$ ${deliveryFee.toStringAsFixed(2)}',
          widget:GeneralText(
            padding: EdgeInsets.only(right: size.width * 0.02),
            text: '\$ 2.00',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            sizetext: size.width * 0.035,
            textDecoration: TextDecoration.lineThrough,
          ) ,
        ),
      ],
    );
  }
}