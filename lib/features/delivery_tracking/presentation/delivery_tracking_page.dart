import 'package:caffeza/core/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../widgets/delivery_info_section.dart';
import '../widgets/delivery_map_section.dart';

class DeliveryTrackingPage extends StatelessWidget {
  const DeliveryTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          const DeliveryMapSection(), // الجزء العلوي للـ Map
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.06,
                vertical: size.height * 0.025,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: const DeliveryInfoSection(),
            ),
          ),
          Positioned(
            top: size.height * 0.06,
            left: size.width * 0.04,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: size.width * 0.05,),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                WidthSpace(space: 0.72),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.my_location, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}