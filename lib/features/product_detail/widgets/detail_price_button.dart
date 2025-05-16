import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../../../routes/app_routes.dart';
import '../../order/logic/order_provider.dart';
import '../logic/product_detail_provider.dart';

class DetailPriceButton extends StatelessWidget {
  const DetailPriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    final coffee = context.watch<DetailProvider>().selectedCoffee;
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GeneralText(
              text: "Price",
              fontWeight: FontWeight.w500,
              sizetext: size.width * 0.035,
              color: Colors.grey,
            ),
            GeneralText(
              padding: EdgeInsets.only(top: size.height * 0.005),
              text: "\$ ${coffee.price}",
              fontWeight: FontWeight.bold,
              sizetext: size.width * 0.05,
              color: AppColors.primary,
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02,
              horizontal: size.width * 0.22,
            ),
          ),
          onPressed: () {
            final selectedCoffee = context.read<DetailProvider>().selectedCoffee;
            context.read<OrderProvider>().setOrderCoffee(selectedCoffee);
            Navigator.pushNamed(context, AppRoutes.order);

          },
          child: GeneralText(
            text:  "Buy Now",
            color: Colors.white,
            fontWeight: FontWeight.w700,
            sizetext: size.width * 0.045,
          ),
        ),
      ],
    );
  }
}