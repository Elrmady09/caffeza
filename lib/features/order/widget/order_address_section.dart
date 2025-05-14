import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';


class OrderAddressSection extends StatelessWidget {
  const OrderAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GeneralText(
          text: "Delivery Address",
          sizetext: 16,
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.lightBrown,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Expanded(
                child: GeneralText(
                  text: "Jl. Kpg Sutoyo No. 620, Bilzen, Tanjungbalai",
                  sizetext: 14,
                  color: Colors.grey,
                ),
              ),
              TextButton(
                onPressed: () {
                  // تعديل العنوان
                },
                child: const GeneralText(
                  text: "Edit Address",
                  color: AppColors.primary,
                  sizetext: 13,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}