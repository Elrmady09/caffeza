import 'package:caffeza/core/widgets/space.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';


class OrderAddressSection extends StatelessWidget {
  const OrderAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralText(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
          text: "Delivery Address",
          sizetext:size.width * 0.04,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        GeneralText(
          //padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
          text: "Jl. Kpg Sutoyo",
          sizetext:size.width * 0.038,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        GeneralText(
          padding: EdgeInsets.only(left: size.width * 0.01),
          text: "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
          sizetext:size.width * 0.032,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        HeightSpace(space: 0.02),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.025),
              height: size.height * 0.04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.width * 0.035),
                border: Border.all(width: 1,color: Color(0xff807f7f))
              ),
              child: Row(
                children: [
                  Icon(Icons.edit_location_alt_outlined,size: size.width * 0.04,color: Colors.black87,),
                  WidthSpace(space: 0.001),
                  GeneralText(
                    padding: EdgeInsets.only(left: size.width * 0.01),
                    text: "Edit Address",
                    sizetext:size.width * 0.032,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
            WidthSpace(space: 0.03),
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.025),
              height: size.height * 0.04,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.035),
                  border: Border.all(width: 1,color: Color(0xff807f7f))
              ),
              child: Row(
                children: [
                  Icon(Icons.note_alt_outlined,size: size.width * 0.04,color: Colors.black87,),
                  WidthSpace(space: 0.001),
                  GeneralText(
                    padding: EdgeInsets.only(left: size.width * 0.01),
                    text: "Add Note",
                    sizetext:size.width * 0.032,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}