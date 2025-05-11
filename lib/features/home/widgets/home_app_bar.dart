import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/widgets/space.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../logic/home_provider.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final location = context.watch<HomeProvider>().location;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined, color: AppColors.primary),
          WidthSpace(space: 0.01),
          GeneralText(
            text: location,
            sizetext: size.width * 0.038,
            fontWeight: FontWeight.w600,
          ),
          const Spacer(),
          CircleAvatar(
            radius: size.width * 0.045,
            backgroundColor: Colors.grey[200],
            child: Icon(Icons.menu, color: Colors.black),
          ),
        ],
      ),
    );
  }
}