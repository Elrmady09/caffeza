import 'package:caffeza/core/constants/app_icons.dart';
import 'package:caffeza/core/widgets/General%20Text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/widgets/space.dart';
import '../logic/delivery_tracking_provider.dart';
import 'Frame_section.dart';


class DeliveryInfoSection extends StatelessWidget {
  const DeliveryInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deliveryProvider = Provider.of<DeliveryTrackingProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Container(
              width: size.width * 0.15,
              height: size.height * 0.008,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(size.width * 0.01),
              ),
            )
        ),
        HeightSpace(space: 0.015),
        Center(
          child: GeneralText(
              text: deliveryProvider.deliveryTime,
            sizetext: size.width * 0.05,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Center(
          child: GeneralText(
            padding: EdgeInsets.only(top: size.height * 0.005,left: size.width * 0.01),
            text: 'Delivery to ${deliveryProvider.deliveryAddress}',
            sizetext: size.width * 0.04,
            fontWeight: FontWeight.w700,
            color: Colors.black54,
          ),
        ),
        HeightSpace(space: 0.025),
        Row(
          children: [
            FrameSection(),
            FrameSection(),
            FrameSection(),
            FrameSection(),

          ],
        ),

        HeightSpace(space: 0.025),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02,vertical: size.height * 0.01),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width * 0.02),
            border: Border.all(
              width: 1,color: Colors.grey,
            )
          ),
          child: Row(
            children: [
              Container(
                width: size.width * 0.12,
                height: size.height * 0.075,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppIcons.fastDelivery3x),
                    scale: 2.5,
                  ),
                    borderRadius: BorderRadius.circular(size.width * 0.025),
                    border: Border.all(
                      width: 1,color: Colors.grey,
                    )
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: size.width * 0.62,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GeneralText(
                      padding: EdgeInsets.only(left: size.width * 0.01),
                      text: 'Delivered your order',
                      sizetext: size.width * 0.045,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    GeneralText(
                      padding: EdgeInsets.only(left: size.width * 0.01),
                      text: 'We will deliver your goods to you in the shortest possible time.',
                      sizetext: size.width * 0.032,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        HeightSpace(space: 0.025),
        Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(AppImages.ImageProfile),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GeneralText(
                  text: 'Brooklyn Simmons',
                  sizetext: size.width * 0.035,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                GeneralText(
                  text: 'Personal Courier',
                  sizetext: size.width * 0.033,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: size.width * 0.13,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.03),
                  border: Border.all(
                    width: 1,color: Colors.grey,
                  ),
              ),
              child: Center(
                child: Icon(Icons.call_outlined,color: Colors.black,),
              ),
            ),
          ],
        ),
      ],
    );
  }
}