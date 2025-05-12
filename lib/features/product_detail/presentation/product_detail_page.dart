import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/widgets/space.dart';
import '../widgets/detail_description.dart';
import '../widgets/detail_image.dart';
import '../widgets/detail_price_button.dart';
import '../widgets/detail_size_selector.dart';
import '../widgets/detail_title_section.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DetailImage(),
            HeightSpace(space: 0.02),
            DetailTitleSection(),
            HeightSpace(space: 0.015),
            DetailDescription(),
            HeightSpace(space: 0.02),
            DetailSizeSelector(),
            HeightSpace(space: 0.02),
            DetailPriceButton(),
          ],
        ),
      ),
    );
  }
}