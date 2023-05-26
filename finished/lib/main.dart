import 'package:flutter/material.dart';
import 'package:github/screens/home.dart';
import 'package:github/utils/dimensions.dart';

void main() {
  runApp(const FurnitureShop());
  print(Dimensions.screenHeight);
  print(Dimensions.screenWidth);
}

class FurnitureShop extends StatelessWidget {
  const FurnitureShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

