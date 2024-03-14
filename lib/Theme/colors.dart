import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColor = Color(0xff0080C9);
  static const Color shadow = Color(0xff0000001a);

  static const Color lightgray = Color(0xff647067);
  static const Color white = Color(0xFFffffff);
  static const Color black = Color(0xFF000000);
  static const Color heading = Color(0xFF333333);
  static const Color grey = Color(0xFFE3E4E3);
  static const Color orange = Color(0xFFFFBC04);
  static const Color red = Color(0xFFFF3B3B);
  static const Color divider = Color(0xFFE6E6E6);
  static const Color marker = Color(0xFF21B9E6);
  static const Color green = Color(0xFF84CC16);
  static const Color lightGreen = Color(0xFF1DC9A0);
  static const Color dividercolor = Color(0xFF1B1E28);

// ! Text Colors
  static const Color darkText = Color(0xFF1D2733);
  static const Color greyText = Color(0xff999B9F);
  static const Color orangeText = Color(0xffFF7029);
  static const Color blueText = Color(0xff0080C9);

  // ! TextField Colors
  static const Color lightBG = Color(0xffF9F9FC);
  static const Color googleBTN = Color(0xffEA4335);
  static const Color appleBTN = Color(0xff1D2733);
}

class FontWeights {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
