import 'package:flutter/material.dart';
import '../../../../core/widgets/space.dart';
import '../../../core/constants/app_colors.dart';

class CoffeeTabs extends StatefulWidget {
  const CoffeeTabs({super.key});

  @override
  State<CoffeeTabs> createState() => _CoffeeTabsState();
}

class _CoffeeTabsState extends State<CoffeeTabs> {
  final List<String> tabs = ['All Coffee', 'Macchiato', 'Latte', 'Americano'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.05,
      child: ListView.separated(
        shrinkWrap: false,
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        separatorBuilder: (_, __) => WidthSpace(space: 0.04),
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() => selectedIndex = index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04,
                vertical: size.height * 0.008,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(size.width * 0.025),
              ),
              child: Center(
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: size.width * 0.035,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}