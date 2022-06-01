import 'package:get/get.dart';

class Dimensions {
  static final double screenHeight = Get.context!.height;
  static final double screenWidth = Get.context!.width;

  // height
  static final double height5 = screenHeight / 168.8;

  static final double height10 = screenHeight / 84.4;
  static final double height15 = screenHeight / 56.27;
  static final double height20 = screenHeight / 42.2;
  static final double height30 = screenHeight / 28.13;
  static final double height45 = screenHeight / 18.75;

  // font
  static final double font16 = screenHeight / 52.75;

  static final double font20 = screenHeight / 42.2;
  static final double font26 = screenHeight / 32.46;

  // icon size
  static final double iconSize24 = screenHeight / 35.17;
  static final double iconSize26 = screenHeight / 32.46;

  //cart
  static final double cardWidth = screenWidth * .95;
  static final double cardHeight = screenHeight / 7;
  static final double cardImageWidth = cardWidth * .3;
  static final double cardBodyWidth = cardWidth * .6;
  static final double cardIconWidth = cardWidth * .1;
}
