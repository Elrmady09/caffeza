import 'package:caffeza/core/constants/app_colors.dart';
import 'package:caffeza/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/widgets/space.dart';
import '../../../core/widgets/General Text.dart';
import '../../../routes/app_routes.dart';
import '../../product_detail/data/models/product_model.dart';
import '../../product_detail/logic/product_detail_provider.dart';

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Map<String, dynamic>> coffeeList = [
      {
        "name": "Caffe Mocha",
        "type": "Deep Foam",
        "price": 4.53,
        "image": AppImages.Imagecard_1,
      },
      {
        "name": "Flat White",
        "type": "Espresso Blend",
        "price": 5.20,
        "image": AppImages.Imagecard_2,
      },
      {
        "name": "Latte",
        "type": "Creamy",
        "price": 4.90,
        "image": AppImages.Imagecard_3,
      },
      {
        "name": "Cappuccino",
        "type": "Milk Foam",
        "price": 4.75,
        "image": AppImages.Imagecard_4,
      },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: coffeeList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: size.height * 0.3,
          crossAxisSpacing: size.width * 0.04,
          mainAxisSpacing: size.height * 0.02,
        ),
        itemBuilder: (context, index) {
          final coffee = coffeeList[index];
          return GestureDetector(
            onTap: (){
              context.read<DetailProvider>().setSelectedCoffee(
                ProductModel(
                  name: coffee["name"],
                  type: coffee["type"],
                  price: coffee["price"],
                  image: coffee["image"],
                ),
              );

              Navigator.pushNamed(context, AppRoutes.productdetail);
            },
            child: Container(
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
                      coffee["image"],
                      width: double.infinity,
                      height: size.height * 0.14,
                      fit: BoxFit.cover,
                    ),
                  ),
                  HeightSpace(space: 0.015),
                  GeneralText(
                      text: coffee["name"],
                      fontWeight: FontWeight.bold,
                    color:AppColors.black,
                  ),
                  HeightSpace(space: 0.005),
                  GeneralText(
                    text: coffee["type"],
                    sizetext: size.width * 0.031,
                    color: Colors.grey,
                  ),
                  HeightSpace(space: 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GeneralText(
                        text: "\$ ${coffee["price"]}",
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
            ),
          );
        },
      ),
    );
  }
}