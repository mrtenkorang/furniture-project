import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class ScreenSize {
  static Size getScreenSize() {
    final window = WidgetsBinding.instance.window;
    final mediaQueryData = MediaQueryData.fromWindow(window);
    return mediaQueryData.size;
  }
}

Size screenSize = ScreenSize.getScreenSize();

final screenWidth = screenSize.width;
final screenHeight = screenSize.height;

class Dimensions {
  // for the home page
  // All width related dimensions
  static double widthMargin20 = screenWidth / 20.5714285;
  static double width16 = screenWidth / 25.714285652;
  static double width10 = screenWidth / 41.142857;
  static double width50 = screenWidth / 8.2285714;
  static double width5 = screenWidth / 82.342856;
  static double width244 = screenWidth / 1.6873536;
  static double width240 = screenWidth / 1.7142857;
  static double width150 = screenWidth / 2.74285713;
  static double width38 = screenWidth / 10.8270676;
  static double width100 = screenWidth / 41.142857 ;
  static double width260 = screenWidth / 1.58241757 ;
  static double width230 = screenWidth / 1.7888198;
  static double width19 = screenWidth / 21.6541352;
  static double width25 = screenWidth / 16.4571428;
  static double width210 = screenWidth / 1.9591836;
  static double width120 = screenWidth / 3.4285714;
  static double width30 = screenWidth / 13.7142856;
  static double width220 = screenWidth / 1.87012986;

  // All height related dimensions
  static double heightMargin20 = screenHeight / 39.885714;
  static double heightMargin30 = screenHeight / 26.590476;
  static double height15 = screenHeight / 53.180952;
  static double height42 = screenHeight / 18.993197;
  static double height16 = screenHeight / 42.8571425;
  static double height10 = screenHeight / 79.771428;
  static double height320 = screenHeight / 2.492857125;
  static double height80 = screenHeight / 9.9714285;
  static double height5 = screenHeight / 159.542856;
  static double height210 = screenHeight / 3.798639;
  static double height150 = screenHeight / 1.3295238;
  static double height40 = screenHeight / 4.98571425;
  static double height2 = screenHeight / 398.85714;
  static double height300 = screenHeight / 2.6590476;
  static double height350 = screenHeight / 2.2791836;
  static double height180 = screenHeight / 4.431746;
  static double height200 = screenHeight / 3.9885714;
  static double height220 = screenHeight / 3.625974;
  static double height265 = screenHeight / 3.0102425;
  static double height240 = screenHeight / 3.3238095;
  static double height12 = screenHeight / 66.47619;



  // All radius related dimensions
  static double radius20 = heightMargin20;
  static double radius18 = screenHeight / 44.31746;
  static double radius8 = screenHeight / 99.714285;
  static double radius10 = screenHeight / 79.771428;
  static double radius16 = screenHeight / 49.8571425;
  static double radius4 = screenHeight / 199.42857;
  static double radius12 = screenHeight / 66.47619;

  // all font related dimensions
  static double font18 = radius18;
  static double font20 = heightMargin20;



}


