import 'package:caffeza/core/widgets/General%20Text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/widgets/space.dart';
import '../widgets/detail_description.dart';
import '../widgets/detail_image.dart';
import '../widgets/detail_price_button.dart';
import '../widgets/detail_size_selector.dart';
import '../widgets/detail_title_section.dart';
import '../widgets/divider_container.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const BackButton(color: Colors.black),
          title: Center(
              child: GeneralText(
                text: 'Detail',
                fontWeight: FontWeight.w700,
                color: Colors.black,

              ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04,vertical: size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              DetailImage(),
              HeightSpace(space: 0.02),
              DetailTitleSection(),
              HeightSpace(space: 0.02),
              Divider_Container(),
              HeightSpace(space: 0.015),
              DetailDescription(),
              HeightSpace(space: 0.02),
              DetailSizeSelector(),
              HeightSpace(space: 0.035),
              DetailPriceButton(),
            ],
          ),
        ),
      ),
    );
  }
}