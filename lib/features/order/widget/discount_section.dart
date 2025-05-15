import 'package:caffeza/core/constants/app_colors.dart';
import 'package:caffeza/core/widgets/General%20Text.dart';
import 'package:flutter/material.dart';

class DiscountSection extends StatelessWidget {
  const DiscountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03,vertical: size.height * 0.019),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.035),
      width: size.width,
      //height: size.height * 0.03,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size.width * 0.03),
        border: Border.all(width: 1,color: Color(0xffafabab)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!.withOpacity(0.1), // 🔹 لون الظل
            blurRadius: 50, // 🔹 مدى نعومة الظل
            spreadRadius: 10, // 🔹 مدى انتشار الظل
            offset: Offset(0, 4), // 🔹 موقع الظل
          ),
        ],

      ),
      child: Row(
        children: [
          Icon(Icons.discount_outlined,color: AppColors.primary,size: 18,),
          GeneralText(
            padding: EdgeInsets.only(left: size.width * 0.022),
            text: '1 Discount is Applies',
            sizetext: size.width * 0.038,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios,color: Colors.black,size: 18,),
        ],
      ),
    );
  }
}
