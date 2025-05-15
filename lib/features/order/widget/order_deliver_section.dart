import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../../../core/widgets/space.dart';
import 'componts _button_deliver.dart';

class OrderDeliverSection extends StatefulWidget {
  const OrderDeliverSection({Key? key}) : super(key: key);

  @override
  State<OrderDeliverSection> createState() => _OrderDeliverSectionState();
}

class _OrderDeliverSectionState extends State<OrderDeliverSection> {
  bool isDeliverSelected = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.025),
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      width: size.width ,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(size.width * 0.03),
      ),
      child: Row(
        children: [
          CompontsButtounDeliver(
            ontap: (){
              setState(() {
                isDeliverSelected = true;
              });
            },
            text: 'Deliver',
            color: isDeliverSelected ? AppColors.primary : Colors.transparent ,
            colortext: isDeliverSelected ? Colors.white : Colors.black ,
          ),
          WidthSpace(space: 0.02),
          CompontsButtounDeliver(
            ontap: (){
              setState(() {
                isDeliverSelected = false;
              });
            },
            text: 'Pick Up',
            color: !isDeliverSelected ? AppColors.primary : Colors.transparent,
            colortext: !isDeliverSelected ? Colors.white : Colors.black ,
          ),

        ],
      ),
    );
  }
}
