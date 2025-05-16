import 'package:caffeza/core/constants/app_colors.dart';
import 'package:caffeza/core/widgets/General%20Text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/space.dart';
import '../logic/order_provider.dart';

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
        Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.016,vertical: size.height * 0.01),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
            border: Border.all(width: 1,color: Color(0xffafabab)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!.withOpacity(0.5), // 🔹 لون الظل
                blurRadius: 50, // 🔹 مدى نعومة الظل
                spreadRadius: 10, // 🔹 مدى انتشار الظل
                offset: Offset(0, 4), // 🔹 موقع الظل
              ),
            ],
          ),
          child: Center(
            child: Icon(Icons.exposure_minus_1,size: size.width * 0.045,color: Colors.black87,),
          ),
        ),
        WidthSpace(space: 0.03),
        GeneralText(
          text: '1',
          sizetext: size.width * 0.045,
          color: Colors.black87,
          fontWeight:FontWeight.w700 ,
        ),
        WidthSpace(space: 0.03),
        Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.016,vertical: size.height * 0.01),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1,color: Color(0xffafabab)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!.withOpacity(0.5), // 🔹 لون الظل
                blurRadius: 50, // 🔹 مدى نعومة الظل
                spreadRadius: 10, // 🔹 مدى انتشار الظل
                offset: Offset(0, 4), // 🔹 موقع الظل
              ),
            ],
          ),
          child: Center(
            child: Icon(Icons.plus_one,size: size.width * 0.045,color: Colors.black87,),
          ),
        ),

      ],
    );
  }
}