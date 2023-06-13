import 'package:flutter/material.dart';
import 'package:github/utils/dimensions.dart';
import 'package:github/widgets/bigtext.dart';
import 'package:github/widgets/details_container.dart';
import 'package:github/widgets/smalltext.dart';

class FurnitureDetailsPage extends StatelessWidget {
  const FurnitureDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 320,
                  color: Color(0xFFF0F2F5),
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 15,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 170,
                child: AppBigText(
                  text: 'Details',
                  textSize: 16,
                  textColor: Colors.black,
                ),
              ),
              Positioned(
                top: 30,
                left: 360,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: 30,
                  width: 30,
                  child: Icon(
                    Icons.favorite_border,
                    size: 17,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 90,
                child: Container(
                  height: 230,
                  width: 240,
                  //color: Colors.green,
                  child: Image(
                    image: AssetImage('asset/details/chair-blue.png',),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 330,
                left: 20,
                child: AppBigText(
                  text: 'Windsor Chair',
                  textColor: Colors.black,
                  textSize: 20,
                ),
              ),
              Positioned(
                top: 355,
                left: 20,
                child: AppSmallText(
                  text: 'This is a very cool chair',
                  textSize: 15,
                ),
              ),
              Positioned(
                top: 330,
                left: 340,
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 25,
                ),
              ),
              Positioned(
                top: 333,
                left: 370,
                child: AppSmallText(
                  text: '3.5',
                  textSize: 15,
                ),
              ),
              Positioned(
                top: 390,
                left: 20,
                child: AppBigText(
                  text: 'Colour',
                  textColor: Colors.black,
                  textSize: 16,
                ),
              ),
              Positioned(
                top: 420,
                left: 20,
                child: DetailsContainer(
                  height: 19,
                  width: 30,
                  color: Colors.yellow,
                  radius: 6,
                ),
              ),
              Positioned(
                top: 420,
                left: 60,
                child: DetailsContainer(
                  height: 19,
                  width: 30,
                  color: Colors.orange,
                  radius: 6,
                ),
              ),
              Positioned(
                top: 420,
                left: 100,
                child: DetailsContainer(
                  height: 19,
                  width: 30,
                  color: const Color(0xFF6A7A9F),
                  radius: 6,
                ),
              ),
              Positioned(
                top: 417,
                left: 290,
                child: DetailsContainer(
                  height: 30,
                  width: 30,
                  color: const Color(0xFFF0F2F5),
                  radius: 6,
                  child: Icon(
                    Icons.remove,
                    color: Color(0xFF6A7A9F),
                  ),
                ),
              ),
              Positioned(
                top: 420,
                left: 330,
                child: AppBigText(
                  text: '01',
                  textSize: 20,
                  textColor: Colors.black,
                ),
              ),
              Positioned(
                top: 417,
                left: 365,
                child: DetailsContainer(
                  height: 30,
                  width: 30,
                  color: const Color(0xFF6A7A9F),
                  radius: 6,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 460,
                left: 20,
                child: AppBigText(
                  text: 'Description',
                  textColor: Colors.black,
                  textSize: 16,
                ),
              ),
              Positioned(
                top: 485,
                left: 20,
                child: AppSmallText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n '
                      'sed do eiusmod tempor incididunt ut labore et dolore \n magna '
                      'aliqua. Ut enim ad minim veniam, quis nostrud \n exercitation '
                      'ullamco laboris nisi ut aliquip ex ea commodo \n consequat.',
                  //textColor: Colors.black,
                  textSize: 12,
                ),
              ),
              Positioned(
                top: 580,
                left: 20,
                child: AppBigText(
                  text: 'Similar Products',
                  textColor: Colors.black,
                  textSize: 16,
                ),
              ),
              Positioned(
                top: 590,
                child: Container(
                  constraints: BoxConstraints.expand(
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                  ),
                  //padding: EdgeInsets.only(left: 18),
                  //color: Color(0xFF6A7A9F),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return DetailsContainer(
                        height: 30,
                        width: 65,
                        color: Color(0xFFF0F2F5),
                        radius: 10,
                        marginLeft: index == 0 ? 20 : 0,
                        marginTop: 20,
                        marginRight: index == 6 ? 20 : 0,
                        marginBottom: 10,
                        child: Image.asset(
                          'asset/details/chair-blue.png',
                          fit: BoxFit.contain,
                        ),
                        //color: Colors.white,
                      );
                    },
                    separatorBuilder: (context, int index) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                    itemCount: 7,
                  ),
                ),
              ),
              Positioned(
                top: 700,
                left: 20,
                child: AppBigText(
                  text: '\$ 300',
                  textColor: Colors.black,
                  textSize: 25,
                ),
              ),
              Positioned(
                top: 690,
                left: 242,
                height: 50,
                child: SizedBox(
                  width: 150,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color(0xFF6A7A9F),
                    onPressed: () {
                      print('width: $screenWidth');
                      print('height: $screenHeight');
                    },
                    child: AppBigText(
                      text: 'Buy Now',
                      textColor: Colors.white,
                      textSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
