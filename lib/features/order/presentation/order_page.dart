import 'package:caffeza/core/widgets/divider_container.dart';
import 'package:flutter/material.dart';

import 'package:caffeza/core/widgets/space.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
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
        backgroundColor: Colors.white,
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
              HeightSpace(space: 0.025),
              Divider_Container(),
              HeightSpace(space: 0.025),

              // ملخص المنتج مع تحديد الكمية
              OrderProductSummary( image: 'assets/images/home/Image card 1.png', name: 'Caffe Mocha', type: 'Deep Foam',),
              HeightSpace(space: 0.025),
              Divider_Container(),
              HeightSpace(space: 0.025),

              // ملخص الدفع
              const OrderPaymentSummary(productPrice: 50, deliveryFee: 50,),

              const Spacer(),

              // زر الطلب
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // تنفيذ الطلب
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const GeneralText(
                    text: "Order",
                    sizetext: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}