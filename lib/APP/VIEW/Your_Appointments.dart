// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_task/Common/AppBTN/primary_btn.dart';
import 'package:testing_task/Common/AppText/app_text.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Routes/app_routes.dart';
import 'package:testing_task/Theme/colors.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(top: 50, left: 25),
            child: Image(
              height: 48,
              width: 48,
              image: AssetImage(AppAssets.arrow),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50, left: 25),
          child: Image(
            height: 343,
            width: 296,
            image: AssetImage(AppAssets.first),
          ),
        ),
        const Center(
          child: CustomText(
            title: 'Your Appointments',
            color: Colors.black,
            size: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
        const Center(
          child: CustomText(
            title: 'You have 0 appointments',
            color: AppColor.lightgray,
            size: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: PrimaryBTN(
            callback: () {
              Get.toNamed(
                AppRoutes.specilization,
              );
            },
            color: AppColor.green,
            title: 'Shedual an appointments',
            fontWeight: FontWeight.w800,
            fontSize: 16,
            textCLR: AppColor.white,
            height: 56,
            width: 354,
            borderRadius: 20,
            iconImage: const AssetImage(AppAssets.plus),
          ),
        ),
        const Spacer(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 5,
              width: 134,
              decoration: BoxDecoration(
                  color: AppColor.black,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
      ],
    ));
  }
}
