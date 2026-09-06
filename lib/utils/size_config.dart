import 'package:flutter/material.dart';

class SizeConfig {
  static late double width;
  static late double height;
  static void init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }

  static double fontSize(double value) {
    return width * value;
  }
}
