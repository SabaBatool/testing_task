// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_task/Common/widgets/docator_Card.dart';
import 'package:testing_task/Common/widgets/searchbar.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Theme/colors.dart';
import 'package:testing_task/Common/AppText/app_text.dart';

class SearchDoctor extends StatelessWidget {
  const SearchDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyController());
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: 210,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const Positioned(
                    top: -40,
                    left: -10,
                    right: -10,
                    bottom: 40,
                    child: ClipRect(
                      child: OverflowBox(
                        child: Image(
                          image: AssetImage(AppAssets.bokk),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Image(
                            height: 48,
                            width: 48,
                            image: AssetImage(AppAssets.serrchbrowser),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: CustomText(
                            size: 20,
                            title: 'Browse All Doctors',
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 10,
                    right: 4,
                    child: Container(
                      width: double.maxFinite,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 0),
                            child: Obx(() {
                              return GestureDetector(
                                onTap: () {
                                  controller.changeTextColorAndWeight(true);
                                },
                                child: Container(
                                  width: 167,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: controller.isGreyNearYou.value
                                        ? Colors.black
                                        : AppColor.blacklight,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: CustomText(
                                      title: 'Near You',
                                      color: controller.isGreyNearYou.value
                                          ? Colors.white
                                          : AppColor.grey,
                                      size: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Obx(() {
                              return GestureDetector(
                                onTap: () {
                                  controller.changeTextColorAndWeight(false);
                                },
                                child: Container(
                                  width: 167,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: controller.isGreySearch.value
                                        ? Colors.black
                                        : AppColor.blacklight,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: CustomText(
                                      title: 'Search',
                                      color: controller.isGreySearch.value
                                          ? Colors.white
                                          : AppColor.grey,
                                      size: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SearchBarview(
                leading: const Icon(Icons.search, color: Colors.black),
                hintText: 'Dr. Hannibal Lecto|',
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      AppAssets.trling,
                      width: 24,
                      height: 24,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      title: '1 Results Found.',
                      color: Colors.black,
                      size: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: const DoctorCard(
                    name: 'Dr. Hannibal Lector',
                    specialty: 'Psychiatrist',
                    distance: '1.1km',
                    rating: 4.5,
                    phoneIcon: Icons.phone_callback_rounded,
                    messageIcon: Icons.message,
                    imagePath: AppAssets.searchdr),
              ),
              SizedBox(
                height: 130,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0, top: 12),
                  child: Container(
                    height: 5,
                    width: 134,
                    decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var isGreyNearYou = true.obs;
  var isGreySearch = false.obs;

  void changeTextColorAndWeight(bool isNearYou) {
    if (isNearYou) {
      isGreyNearYou.value = true;
      isGreySearch.value = false;
    } else {
      isGreyNearYou.value = false;
      isGreySearch.value = true;
    }
  }
}
