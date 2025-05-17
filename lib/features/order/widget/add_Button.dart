import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key, required this.iconData, this.ontap}) : super(key: key);
  final IconData iconData;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap:ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.016,vertical: size.height * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
          border: Border.all(width: 1,color: Color(0xffafabab)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400]!.withOpacity(0.5), // 🔹 لون الظل
              blurRadius: 50, // 🔹 مدى نعومة الظل
              spreadRadius: 10, // 🔹 مدى انتشار الظل
              offset: Offset(0, 4), // 🔹 موقع الظل
            ),
          ],
        ),
        child: Center(
          child: Icon(iconData,size: size.width * 0.045,color: Colors.black87,),
        ),
      ),
    );
  }
}
