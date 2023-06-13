import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github/utils/app_constants.dart';
import 'package:github/utils/dimensions.dart';
import 'package:github/widgets/bigtext.dart';
import 'package:github/widgets/display_card.dart';
import 'package:go_router/go_router.dart';

import '../data/data.dart';
import '../widgets/recent_view_card.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    var selectedIndex = -1;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // App Bar( menu and profile )
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.widthMargin20,
                        top: Dimensions.heightMargin20),
                    child: SvgPicture.asset('asset/home/icons8-menu.svg'),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          right: Dimensions.widthMargin20,
                          top: Dimensions.heightMargin20),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: Dimensions.radius20,
                        child: CircleAvatar(
                          radius: Dimensions.radius18,
                          backgroundImage:
                              const AssetImage('asset/home/profile.jpeg'),
                        ),
                      )),
                ],
              ),

              SizedBox(
                height: Dimensions.heightMargin20,
              ),

              // text display
              Container(
                margin: EdgeInsets.only(left: Dimensions.widthMargin20),
                child: AppBigText(
                  text: "Choose Your Best Furniture",
                  textColor: Colors.black,
                ),
              ),

              SizedBox(
                height: Dimensions.height15,
              ),

              // Search field and other container
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Color.fromRGBO(240, 242, 245, 0),
                      height: Dimensions.height42,
                      margin: EdgeInsets.only(
                          left: Dimensions.widthMargin20,
                          right: Dimensions.heightMargin30),
                      child: TextField(
                        style: TextStyle(fontSize: Dimensions.font18),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintText: 'search a furniture',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: Dimensions.height16,
                              horizontal: Dimensions.width16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius16),
                            borderSide:
                                BorderSide(color: Colors.grey[300]!, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius10),
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
                    width: Dimensions.width10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: Dimensions.widthMargin20),
                    width: Dimensions.width50,
                    height: Dimensions.height42,
                    decoration: BoxDecoration(
                        color: Color(0xFF6A7A9F),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius10),
                        border:
                            Border.all(color: Color(0xFF6A7A9F), width: 0.1)),
                    child: Icon(Icons.account_tree_outlined),
                  )
                ],
              ),

              SizedBox(
                height: Dimensions.height15,
              ),

              // Listview for all the categories of furniture
              Container(
                height: Dimensions.heightMargin30,
                //margin: EdgeInsets.only(left: 20.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        print(height);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? Dimensions.widthMargin20 : 0),
                        decoration: BoxDecoration(
                          color: index == 0
                              ? const Color(0xFF6A7A9F)
                              : Colors.transparent,
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius8),
                        ),
                        //padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: AppBigText(
                            text: categories[index],
                            textSize: Dimensions.font20,
                            textColor:
                                index == 0 ? Colors.white : Colors.grey[600],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, int index) {
                    return SizedBox(
                      width: Dimensions.width16,
                    );
                  },
                  itemCount: categories.length,
                ),
              ),

              SizedBox(
                height: Dimensions.height10,
              ),

              Container(
                constraints: BoxConstraints.expand(
                  height: Dimensions.height300,
                ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: () {
                        context.pushNamed(AppConstants.details);
                        print('you tapped on card with index $index');
                      },
                      child: DisplayCard(
                        furnitureName: furnitureNames[index],
                        furnitureDescription: furnitureDescriptions[index],
                        furniturePrice: furniturePrices[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, int index) {
                    return SizedBox(
                      width: Dimensions.width5,
                    );
                  },
                  itemCount: furnitureNames.length,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: Dimensions.width244),
                child: AppBigText(
                  text: 'Recent View',
                  textColor: Colors.black,
                  textSize: Dimensions.font20,
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Container(
                //margin: EdgeInsets.only(left: 20, right: 20),
                constraints: BoxConstraints.expand(
                  height: Dimensions.height80,
                ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FurnitureDetailsPage();
                        }));
                        print('you tapped on card with index $index');
                      },
                      child: RecentViewCard(
                        furnitureName: furnitureNames[index],
                        furnitureDescription: furnitureDescriptions[index],
                        furniturePrice: furniturePrices[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, int index) {
                    return SizedBox(
                      width: Dimensions.width5,
                    );
                  },
                  itemCount: furnitureNames.length,
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              )
            ],
          ),
        ),
        //TODO: Customize bottomnavigationbar
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'ABC'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add')
          ],
        ),
      ),
    );
  }
}
