import 'package:caffeza/core/widgets/General%20Text.dart';
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralText(
          padding: EdgeInsets.only(bottom: size.height * 0.025),
          text: 'Size',
          sizetext: size.width * 0.05,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(sizes.length, (index) {
            bool isSelected = index == selected;

            return GestureDetector(
              onTap: () => setState(() => selected = index),
              child: Container(
                width: size.width * 0.25,
                height: size.height * 0.06,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: isSelected ? AppColors.primary : Color(
                      0xffd5cece),width: size.width * 0.003)
                ),
                child: Text(
                  sizes[index],
                  style: TextStyle(
                    color: isSelected ? AppColors.primary : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}