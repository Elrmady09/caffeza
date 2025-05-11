import 'package:caffeza/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/space.dart';
import '../../../core/widgets/General Text.dart';

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: size.height * 0.3,
          crossAxisSpacing: size.width * 0.04,
          mainAxisSpacing: size.height * 0.02,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal:size.width * 0.03,vertical:size.height * 0.01 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.width * 0.04),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.15), // 🔹 لون الظل
                  blurRadius: 50, // 🔹 مدى نعومة الظل
                  spreadRadius: 10, // 🔹 مدى انتشار الظل
                  offset: Offset(0, 4), // 🔹 موقع الظل
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(size.width * 0.03),
                  child: Image.asset(
                    "assets/images/home/Image card ${index + 1}.png",
                    width: double.infinity,
                    height: size.height * 0.14,
                    fit: BoxFit.cover,
                  ),
                ),
                HeightSpace(space: 0.015),
                GeneralText(
                    text: "Caffe Mocha",
                    fontWeight: FontWeight.bold,
                  color:AppColors.black,
                ),
                HeightSpace(space: 0.005),
                GeneralText(
                  text: "Deep Foam",
                  sizetext: size.width * 0.031,
                  color: Colors.grey,
                ),
                HeightSpace(space: 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GeneralText(
                      text: "\$ 4.53",
                      fontWeight: FontWeight.bold,
                      sizetext: size.width * 0.04,
                      color: AppColors.black,
                    ),
                    Container(
                      width: size.width * 0.08,
                      height: size.height * 0.045,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Center(child: Icon(Icons.add, size: size.width * 0.045, color: Colors.white)),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}