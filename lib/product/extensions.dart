import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}

extension DoubleExtension on double {
  double get deviceHeight => this * SizeConfig.screenHeight;
  double get deviceWidth => this * SizeConfig.screenWidth;

  Radius get radius => Radius.circular(this);
  BorderRadius get borderRadius => BorderRadius.all(Radius.circular(this));
}
