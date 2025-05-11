import 'package:flutter/material.dart';
import '../../../../core/widgets/space.dart';
import '../../../core/widgets/General Text.dart';

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: size.height * 0.26,
          crossAxisSpacing: size.width * 0.04,
          mainAxisSpacing: size.height * 0.02,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(size.width * 0.03),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.width * 0.04),
              color: Colors.grey[100],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(size.width * 0.03),
                  child: Image.asset(
                    "assets/images/coffee_${index + 1}.png",
                    width: double.infinity,
                    height: size.height * 0.12,
                    fit: BoxFit.cover,
                  ),
                ),
                HeightSpace(space: 0.015),
                const GeneralText(text: "Caffe Mocha", fontWeight: FontWeight.bold),
                HeightSpace(space: 0.005),
                GeneralText(
                  text: "Deep Foam",
                  sizetext: size.width * 0.035,
                  color: Colors.grey,
                ),
                HeightSpace(space: 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GeneralText(
                      text: "\$ 4.53",
                      fontWeight: FontWeight.bold,
                      sizetext: size.width * 0.035,
                    ),
                    CircleAvatar(
                      radius: size.width * 0.04,
                      backgroundColor: Colors.brown[300],
                      child: Icon(Icons.add, size: size.width * 0.04, color: Colors.white),
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