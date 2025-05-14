
import 'package:caffeza/core/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../widget/order_address_section.dart';
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
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.025),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                width: size.width,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(size.width * 0.03),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: size.width,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(size.width * 0.02),
                        ),
                        child: Center(
                          child: GeneralText(
                              text: 'Deliver',
                            sizetext: size.width * 0.03,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    WidthSpace(space: 0.02),
                    Expanded(
                      child: Container(
                        width: size.width,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(size.width * 0.02),
                        ),
                        child: Center(
                          child: GeneralText(
                            text: 'Pick Up',
                            sizetext: size.width * 0.03,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // عنوان التوصيل
              const OrderAddressSection(),
              const SizedBox(height: 20),

              // ملخص المنتج مع تحديد الكمية
              OrderProductSummary( image: '', name: '', type: '', price: 10, quantity: 20,),
              const SizedBox(height: 20),

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