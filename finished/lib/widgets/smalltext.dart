import 'package:flutter/material.dart';

class AppSmallText extends StatelessWidget {
  String text;
  double? textSize;
  Color? textColor;
  AppSmallText({Key? key, required this.text, this.textSize = 20, this.textColor=Colors.grey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
          color: textColor,
      ),
    );
  }
}
