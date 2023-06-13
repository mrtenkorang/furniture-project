import 'package:flutter/material.dart';
import 'package:github/utils/dimensions.dart';
import 'package:github/widgets/bigtext.dart';
import 'package:github/widgets/smalltext.dart';

class DisplayCard extends StatelessWidget {
  String furnitureName;
  String furnitureDescription;
  double furniturePrice;
  DisplayCard(
      {Key? key,
      required this.furnitureName,
      required this.furnitureDescription,
      required this.furniturePrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            margin: EdgeInsets.only(left: Dimensions.widthMargin20),
            height: Dimensions.height320,
            width: Dimensions.width240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.05),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: Dimensions.height5,
          left: Dimensions.width25,
          child: Container(
            height: Dimensions.height210,
            width: Dimensions.width230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius8),
              color: const Color(0xFFF0F2F5),
            ),
          ),
        ),
        Positioned(
          top: Dimensions.height10,
          right: Dimensions.widthMargin20,
          child: Container(
            height: Dimensions.height15,
            width: Dimensions.width25 * 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius4),
              color: Colors.white,
            ),
            child: Center(
              child: AppSmallText(
                text: '30% off',
                textSize: Dimensions.height10,
                textColor: Colors.black,
              ),
            ),
          ),
        ),
        Positioned(
          left: Dimensions.height80,
          top: Dimensions.widthMargin20,
          child: Container(
            height: Dimensions.height180,
            width: Dimensions.width120,
            //color: Colors.green,
            child: Image(
              image: AssetImage(
                'asset/home/chair-blue.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: Dimensions.height220,
          left: Dimensions.width30,
          child: AppBigText(
            text: furnitureName,
            textSize: Dimensions.height15,
            textColor: Colors.black,
          ),
        ),
        Positioned(
          top: Dimensions.height220,
          left: Dimensions.width210,
          child: Icon(
            Icons.star,
            size: Dimensions.height16, // check this
            color: Colors.yellow,
          ),
        ),
        Positioned(
          top: Dimensions.height220,
          left: Dimensions.width230,
          child: AppSmallText(
            text: '3.5',
            textSize: Dimensions.height15,
          ),
        ),
        Positioned(
          top: Dimensions.height240,
          left: Dimensions.width30,
          child: AppSmallText(
            text: furnitureDescription,
            textSize: Dimensions.height12,
          ),
        ),
        Positioned(
          top: Dimensions.height265,
          left: Dimensions.width30,
          child: AppBigText(
            text: '\$ $furniturePrice',
            textSize: Dimensions.heightMargin20,
            textColor: Colors.black,
          ),
        ),
        Positioned(
          top: Dimensions.height265,
          left: Dimensions.width220,
          child: Container(
            height: Dimensions.heightMargin30,
            width: Dimensions.width30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius4),
              color: const Color(0xFF6A7A9F),
            ),
            child: Icon(
              Icons.add,
              size: Dimensions.heightMargin20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
