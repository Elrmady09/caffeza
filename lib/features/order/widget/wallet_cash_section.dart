import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../../../core/widgets/space.dart';
import '../logic/order_provider.dart';

class WalletCashSection extends StatelessWidget {
  const WalletCashSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final orderProvider = context.watch<OrderProvider>();
    final product = orderProvider.orderedCoffee;

    final price = double.tryParse(product?.price ?? '0') ?? 0;
    final deliveryFee = orderProvider.deliveryFee;
    final total = price + deliveryFee;
    return Container(
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
                    text: '\$ ${total.toStringAsFixed(2)}',
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
    );
  }
}
