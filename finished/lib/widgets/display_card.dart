import 'package:flutter/material.dart';
import 'package:github/widgets/bigtext.dart';
import 'package:github/widgets/smalltext.dart';

class DisplayCard extends StatelessWidget {

  String furnitureName;
  String furnitureDescription;
  double furniturePrice;
  DisplayCard({Key? key, required this.furnitureName, required this.furnitureDescription, required this.furniturePrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 240,
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0,3),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 5, top: 5, right: 5),
            // Makes the container take the given height and width instead of adjusting itself
            // to the size of its children
            constraints: const BoxConstraints.expand(
              height: 210,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF0F2F5),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5, left: 150),
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: AppSmallText(
                      text: '30% off',
                      textColor: Colors.black,
                      textSize: 10,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 150, width: 100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                    child: Image.asset('asset/home/chair-blue.jpg',fit: BoxFit.cover,),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        AppBigText(text: furnitureName,textSize: 14,textColor: Colors.black,),
                        AppSmallText(text: furnitureDescription,textSize: 10,)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 15,color: Colors.yellow,),
                        AppSmallText(text: '3.5', textSize: 11,)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppBigText(text: '\$ ${furniturePrice}', textSize: 20,textColor: Colors.black,),
                    Container(
                      constraints: BoxConstraints.expand(height: 40, width: 38),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF6A7A9F),
                      ),
                      child: Icon(Icons.add, color: Colors.white,),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
