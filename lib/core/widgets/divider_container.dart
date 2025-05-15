import 'package:flutter/material.dart';

class Divider_Container extends StatelessWidget {
  const Divider_Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      width: size.width,
      height: size.height * 0.002,
      color: Colors.grey[300],
    );
  }
}
