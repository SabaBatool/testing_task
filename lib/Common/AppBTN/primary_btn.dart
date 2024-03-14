import 'package:flutter/material.dart';
import 'package:testing_task/Common/AppText/app_text.dart';
import 'package:testing_task/Theme/colors.dart';

class PrimaryBTN extends StatelessWidget {
  final double width;
  final String title;
  final VoidCallback? callback;
  final double height;
  final double fontSize;
  final double borderRadius;
  final bool isGradiant;
  final LinearGradient? gradient;
  final Color color;
  final Color textCLR;
  final FontWeight fontWeight;
  final AssetImage iconImage;

  const PrimaryBTN({
    required this.callback,
    required this.color,
    required this.title,
    required this.width,
    this.height = 50,
    this.fontSize = 16,
    this.fontWeight = FontWeight.bold,
    this.borderRadius = 15,
    this.isGradiant = false,
    this.gradient,
    this.textCLR = Colors.white,
    required this.iconImage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        height: height,
        width: width,
        decoration: isGradiant == false
            ? BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(borderRadius),
              )
            : BoxDecoration(
                color: color,
                gradient: gradient ??
                    const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [AppColor.googleBTN, AppColor.primaryColor],
                    ),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              title: title,
              color: textCLR,
              size: fontSize,
              fontWeight: fontWeight,
            ),
            const SizedBox(width: 12),
            Image(
              image: iconImage,
              height: 24,
              width: 24,
              color: textCLR,
            ),
          ],
        ),
      ),
    );
  }
}
