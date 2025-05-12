import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';

class DetailTitleSection extends StatelessWidget {
  const DetailTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralText(
          text: "Caffe Mocha",
          fontWeight: FontWeight.bold,
          color: AppColors.black,
          sizetext: size.width * 0.05,
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