import 'package:caffeza/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../logic/product_detail_provider.dart';
import 'detail_feature_icon.dart';

class DetailTitleSection extends StatelessWidget {
  const DetailTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final coffee = context.watch<DetailProvider>().selectedCoffee;
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralText(
          text: coffee.name,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
          sizetext: size.width * 0.05,
        ),
        Row(
          children: [
            GeneralText(
              text: 'Ice/Hot',
              color: Colors.grey,
              fontWeight: FontWeight.w700,
            ),
            Spacer(),
            const DetailFeatureIcon(iconPath: AppIcons.fastDelivery),
            const DetailFeatureIcon(iconPath: AppIcons.qualityBean),
            const DetailFeatureIcon(iconPath: AppIcons.extraMilk),

          ],
        ),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 20),
            const SizedBox(width: 4),
            GeneralText(
              text: "4.8",
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
            GeneralText(
              text: " (230)",
              color: Colors.grey,
              sizetext: size.width * 0.03,
            ),
          ],
        ),
      ],
    );
  }
}