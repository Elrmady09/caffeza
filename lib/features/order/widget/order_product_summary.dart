import 'package:flutter/material.dart';
import 'package:caffeza/core/constants/app_colors.dart';
import 'package:caffeza/core/widgets/General%20Text.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/space.dart';
import '../logic/order_provider.dart';
import 'add_Button.dart';

class OrderProductSummary extends StatelessWidget {



  const OrderProductSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orderProvider = context.watch<OrderProvider>();
    final product = orderProvider.orderedCoffee;
    if (product == null) return SizedBox.shrink();

    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            product.image,
            width: size.width * 0.16,
            height: size.width * 0.16,
            fit: BoxFit.cover,
          ),
        ),
        const WidthSpace(space: 0.03),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GeneralText(
              padding: EdgeInsets.only(top: size.height * 0.003),
              text: product.name,
              sizetext: size.width * 0.045,
              fontWeight:FontWeight.w700 ,
              color: AppColors.primary,
                ),
            GeneralText(
              padding: EdgeInsets.only(top: size.height * 0.015,left: size.width * 0.005),
              text: product.type,
              sizetext: size.width * 0.035,
              color: Colors.grey,
              fontWeight:FontWeight.w700 ,
            ),

          ],
        ),
        Spacer(),
        AddButton(ontap:() => context.read<OrderProvider>().decreaseQuantity(),iconData: Icons.exposure_minus_1_outlined,),
        WidthSpace(space: 0.03),
        GeneralText(
          text: '${orderProvider.quantity}',
          sizetext: size.width * 0.045,
          color: Colors.black87,
          fontWeight:FontWeight.w700 ,
        ),
        WidthSpace(space: 0.03),
        AddButton(ontap:() => context.read<OrderProvider>().increaseQuantity(),iconData: Icons.exposure_plus_1_outlined,),


      ],
    );
  }
}