import 'package:caffeza/core/constants/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/General Text.dart';

class DetailDescription extends StatefulWidget {
  const DetailDescription({
    super.key,
    required this.description,
  });
  final String description;

  @override
  State<DetailDescription> createState() => _DetailDescriptionState();
}

class _DetailDescriptionState extends State<DetailDescription> {


  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final String fullText = widget.description;
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
            text: _isExpanded || fullText.length <= 140
                ? fullText
                : '${fullText.substring(0, 140)}...',
          ),
          if (fullText.length > 140) // ✅ أظهر "Read More" فقط إذا النص طويل
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