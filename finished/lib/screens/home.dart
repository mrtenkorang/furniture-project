import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github/widgets/bigtext.dart';
import 'package:github/widgets/display_card.dart';

import '../data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var _selectedIndex = -1;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // App Bar( menu and profile )
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: SvgPicture.asset('asset/home/icons8-menu.svg'),
                ),
                Container(
                    margin: EdgeInsets.only(right: 20.0, top: 20.0),
                    child: CircleAvatar()),
              ],
            ),

            const SizedBox(
              height: 20.0,
            ),

            // text display
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: AppBigText(
                text: "Choose Your Best Furniture",
                textColor: Colors.black,
              ),
            ),

            const SizedBox(
              height: 15.0,
            ),

            // Search field and other container
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(240, 242, 245, 0),
                    height: 42.0,
                    margin: EdgeInsets.only(left: 20.0, right: 30.0),
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'search a furniture',
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: Colors.grey[300]!, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.grey[300]!, width: 1),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      onChanged: (value) {
                        // Handle the text input changes here
                        print('Input value: $value');
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  width: 50.0,
                  height: 42.0,
                  decoration: BoxDecoration(
                      color: Color(0xFF6A7A9F),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF6A7A9F), width: 0.1)),
                  child: Icon(Icons.account_tree_outlined),
                )
              ],
            ),

            const SizedBox(
              height: 15.0,
            ),

            // Listview for all the categories of furniture
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 20.0),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: _selectedIndex == index
                          ? const Color(0xFF6A7A9F)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                        print(_selectedIndex);
                      },
                      child: AppBigText(
                        text: categories[index],
                        textSize: 20,
                        textColor: Colors.grey[600],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: categories.length,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 320,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFAFAFA),
                ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index){
                      return DisplayCard(
                        furnitureName: furnitureNames[index],
                        furnitureDescription: furnitureDescriptions[index],
                        furniturePrice: furniturePrices[index],
                      );
                    },
                    separatorBuilder: (context, int index){
                      return SizedBox(width: 5,);
                    },
                    itemCount: furnitureNames.length,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
                margin: EdgeInsets.only(right: 244),
              child: AppBigText(text: 'Recent View', textColor: Colors.black,textSize: 20,),),
              SizedBox(height: 10,),
            Container(),
          ],
        ),
      ),
    );
  }
}
