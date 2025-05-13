import 'package:caffeza/core/constants/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/General Text.dart';

class DetailDescription extends StatefulWidget {
  const DetailDescription({super.key});

  @override
  State<DetailDescription> createState() => _DetailDescriptionState();
}

class _DetailDescriptionState extends State<DetailDescription> {


  bool _isExpanded = false;

  final String fullText =
      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk, topped with foamed milk. The texture and taste depend on the skill of the barista. The milk is steamed to create a thick foam, and the espresso adds a rich coffee flavor...";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final textStyle = TextStyle(
      fontSize: size.width * 0.035,
      color: Colors.grey[500],
      fontWeight: FontWeight.w500,
      height: 1.4,
    );

    return RichText(
      text: TextSpan(
        style: textStyle,
        children: [
          TextSpan(
            text: _isExpanded ? fullText : '${fullText.substring(0, 140)}...',
          ),
          TextSpan(
            text: _isExpanded ? ' Read Less' : ' Read More',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
          ),
        ],
      ),
    );
  }
}