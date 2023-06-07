import 'package:flutter/material.dart';

class AppBigText extends StatelessWidget {
  String text;
  double? textSize;
  Color? textColor;
  AppBigText({Key? key, required this.text, this.textSize = 30, this.textColor=Colors.grey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: textSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );
  }
}
