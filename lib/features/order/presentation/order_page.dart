import 'package:caffeza/core/widgets/divider_container.dart';
import 'package:flutter/material.dart';

import 'package:caffeza/core/widgets/space.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../widget/discount_section.dart';
import '../widget/order_address_section.dart';
import '../widget/order_deliver_section.dart';
import '../widget/order_payment_summary.dart';
import '../widget/order_product_summary.dart';


class OrderPage extends StatelessWidget {


  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.white,

          title: GeneralText(
              text: "Order",
            sizetext: size.width * 0.05,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderDeliverSection(),
              // عنوان التوصيل
              const OrderAddressSection(),
              HeightSpace(space: 0.024),
              Divider_Container(),
              HeightSpace(space: 0.024),

              // ملخص المنتج مع تحديد الكمية
              OrderProductSummary( image: 'assets/images/home/Image card 1.png', name: 'Caffe Mocha', type: 'Deep Foam',),
              HeightSpace(space: 0.024),
              Divider_Container(),
              HeightSpace(space: 0.024),
              DiscountSection(),
              HeightSpace(space: 0.024),

              // ملخص الدفع
              const OrderPaymentSummary(),

              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.015,horizontal: size.width * 0.04),
                width: size.width,
                height: size.height * 0.18,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(size.width * 0.03),
                    topLeft: Radius.circular(size.width * 0.03),
                  ),

                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.wallet_outlined,color: AppColors.primary,size: size.width * 0.06,),
                        WidthSpace(space: 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GeneralText(
                              text: 'Cash/Wallet',
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              sizetext: size.width * 0.035,
                            ) ,
                            GeneralText(
                              text: '\$ 5.53',
                              color: AppColors.primary,
                              fontWeight: FontWeight.w700,
                              sizetext: size.width * 0.035,
                            ) ,

                          ],
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down_outlined,color: AppColors.primary,size: size.width * 0.06,),

                      ],
                    ),
                    HeightSpace(space: 0.015),
                    Container(
                      width: size.width,
                      height: size.height * 0.07,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(size.width * 0.03),
                      ),
                      child: Center(
                        child:GeneralText(
                          //padding: EdgeInsets.only(right: size.width * 0.02),
                          text: 'Order',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          sizetext: size.width * 0.05,
                        ) ,
                      ),
                    )
                  ],
                ),
              ),

              // زر الطلب


            ],
          ),
        ),
      ),
    );
  }
}