import 'package:flutter/material.dart';

class ShopAppBar extends StatelessWidget {

  String leftIcon;
  CircleAvatar rightIcon;

  ShopAppBar({Key? key, required this. leftIcon, required this.rightIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Image.asset(leftIcon, fit: BoxFit.cover,),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0, top: 20.0),
              child: rightIcon),
        ],
      ),
    );
  }
}
