import 'package:flutter/material.dart';
import 'package:caffeza/core/widgets/divider_container.dart';
import 'package:caffeza/core/widgets/space.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../widget/discount_section.dart';
import '../widget/order_address_section.dart';
import '../widget/order_deliver_section.dart';
import '../widget/order_payment_summary.dart';
import '../widget/order_product_summary.dart';
import '../widget/wallet_cash_section.dart';


class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
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
              const OrderAddressSection(),
              HeightSpace(space: 0.024),
              Divider_Container(),
              HeightSpace(space: 0.024),
              OrderProductSummary(),
              HeightSpace(space: 0.024),
              Divider_Container(),
              HeightSpace(space: 0.024),
              DiscountSection(),
              HeightSpace(space: 0.024),
              const OrderPaymentSummary(),
              const Spacer(),
              WalletCashSection(),
            ],
          ),
        ),
      ),
    );
  }
}