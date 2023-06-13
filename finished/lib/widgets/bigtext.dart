import 'package:flutter/material.dart';

class AppBigText extends StatelessWidget {
  String text;
  double? textSize;
  Color? textColor;
  TextOverflow? overflow;
  AppBigText(
      {Key? key,
      required this.text,
      this.textSize = 30,
      this.textColor = Colors.grey,
      this.overflow
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontSize: textSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );
  }
}
