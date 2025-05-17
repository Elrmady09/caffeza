import 'package:flutter/material.dart';


class GeneralText extends StatelessWidget {
  const GeneralText({Key? key, required this.text, this.sizetext, this.fontWeight, this.color, this.padding, this.textAlign, this.maxLines, this.overflow, this.textDecoration, }) : super(key: key);
  final String text;
  final double? sizetext;
  final FontWeight? fontWeight ;
  final Color? color;
  final EdgeInsets? padding;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? textDecoration;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:padding ?? EdgeInsets.all(0) ,
      child: Text(
          text,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
          fontSize: sizetext,
          fontWeight:fontWeight,
          color:color,
          decoration: textDecoration,
          decorationColor: Colors.black

        ),
        textAlign: textAlign,
      ),
    );
  }
}
