import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class DetailSizeSelector extends StatefulWidget {
  const DetailSizeSelector({super.key});

  @override
  State<DetailSizeSelector> createState() => _DetailSizeSelectorState();
}

class _DetailSizeSelectorState extends State<DetailSizeSelector> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    List<String> sizes = ['S', 'M', 'L'];
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(sizes.length, (index) {
        bool isSelected = index == selected;

        return GestureDetector(
          onTap: () => setState(() => selected = index),
          child: Container(
            width: size.width * 0.18,
            height: size.height * 0.06,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary : Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              sizes[index],
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }),
    );
  }
}