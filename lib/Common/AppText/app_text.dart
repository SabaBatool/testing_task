import 'package:flutter/material.dart';
import 'package:testing_task/Theme/colors.dart';

import 'font_type.dart';

extension StringExtension on String {
  String capitalize() {
    String text = "";
    try {
      text = "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    } catch (e) {}
    return text;
  }
}

class CustomText extends StatelessWidget {
  final String title;
  final TextAlign alignment;
  final TextOverflow txtOverFlow;
  final FontStyle style;
  final double letterSpacce;
  final Color color;
  final TextDecoration textDecoration;
  final FontWeight fontWeight;
  final double size;
  final FontType fontType;
  final int? maxLines;
  final double? height;
  const CustomText({
    super.key,
    this.fontType = FontType.poppins,
    this.size = 14,
    this.height,
    this.fontWeight = FontWeights.regular,
    this.textDecoration = TextDecoration.none,
    this.color = Colors.black,
    this.letterSpacce = 0,
    this.style = FontStyle.normal,
    this.alignment = TextAlign.start,
    this.txtOverFlow = TextOverflow.visible,
    required this.title,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: alignment,
      maxLines: maxLines,
      textHeightBehavior: TextHeightBehavior(),
      style: TextStyle(
        overflow: txtOverFlow,
        fontStyle: style,
        letterSpacing: letterSpacce,
        fontFamily: fontType == FontType.emberly ? "Emberly" : "Poppins",
        color: color,
        decoration: textDecoration,
        fontWeight: fontWeight,
        fontSize: size,
        height: height,
      ),
    );
  }
}
