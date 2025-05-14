import 'package:caffeza/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/product_detail_provider.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    final coffee = context.watch<DetailProvider>().selectedCoffee;
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.3,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.00),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.width * 0.05),
        image: DecorationImage(
            image: AssetImage(coffee.image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}