import 'package:flutter/material.dart';
import 'package:github/widgets/smalltext.dart';

import 'bigtext.dart';

class RecentViewCard extends StatelessWidget {
  final String furnitureName;
  final String furnitureDescription;
  final double furniturePrice;

  const RecentViewCard(
      {Key? key,
      required this.furnitureName,
      required this.furnitureDescription,
      required this.furniturePrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      constraints: BoxConstraints.expand(
        height: 80,
        width: 180,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 4,
            left: 4,
            child: Container(
              constraints: BoxConstraints.expand(
                height: 72,
                width: 60,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF0F2F5),
              ),
              child: Image.asset(
                'asset/home/chair-blue.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 74,
            top: 10,
            child: AppBigText(
              text: furnitureName,
              textColor: Colors.black,
              textSize: 13,
            ),
          ),
          Positioned(
            left: 74,
            top: 25,
            child: AppSmallText(
              text: furnitureDescription,
              textSize: 10,
            ),
          ),
          Positioned(
            left: 74,
            top: 53,
            child: AppBigText(
              text: '\$ $furniturePrice',
              textColor: Colors.black,
              textSize: 13,
            ),
          ),
          Positioned(
              left: 140,
              top: 53,
              child: Icon(
                Icons.star,
                size: 15,
                color: Colors.yellow,
              )),
          Positioned(
              left: 157,
              top: 53,
              child: AppBigText(
                text: '4.5',
                textSize: 13,
                textColor: Colors.black,
              )),
        ],
      ),
    );
  }
}
