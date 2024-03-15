// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_task/APP/ViewModel/getx_viewmodel.dart';
import 'package:testing_task/Common/AppBTN/primary_btn.dart';
import 'package:testing_task/Common/AppText/app_text.dart';
import 'package:testing_task/Common/widgets/Specialization.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Routes/app_routes.dart';
import 'package:testing_task/Theme/colors.dart';

class FilterDoctorSearchView extends StatelessWidget {
  const FilterDoctorSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SelectCardController>();

    return Scaffold(
      backgroundColor: AppColor.searchbackcl,
      body: Stack(
        children: [
          Positioned(
            bottom: 420,
            left: 15,
            right: 15,
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Image(
                image: AssetImage(AppAssets.shapae2),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 435,
            left: 10,
            right: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Image(
                image: AssetImage(AppAssets.shape1),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            height: 900,
            left: 0,
            right: 0,
            top: 180,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 20, bottom: 400),
                  child: SingleChildScrollView(
                    reverse: true,
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 6),
                        Center(
                          child: Container(
                            height: 5,
                            width: 64,
                            color: AppColor.lightgray,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 40, left: 0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: CustomText(
                                  title: 'Filter Doctor Search',
                                  color: Colors.black,
                                  size: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Image(
                                height: 24,
                                width: 24,
                                image: AssetImage(AppAssets.wert),
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const CustomText(
                          title: 'Gender',
                          color: Colors.black,
                          size: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.selectGender(Gender.male);
                              },
                              child: Obx(() => Container(
                                    height: 56,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: controller.selectedGender.value ==
                                              Gender.male
                                          ? AppColor.green
                                          : AppColor.white,
                                    ),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 30),
                                          child: Image(
                                            height: 24,
                                            width: 24,
                                            image: AssetImage(AppAssets.male),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        CustomText(
                                          title: 'Male',
                                          fontWeight:
                                              controller.selectedGender.value ==
                                                      Gender.male
                                                  ? FontWeight.bold
                                                  : FontWeight.w500,
                                          size: 16,
                                          color: controller
                                                      .selectedGender.value ==
                                                  Gender.male
                                              ? AppColor.white
                                              : AppColor
                                                  .black, // Provide a default color when the condition is not met
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.selectGender(Gender.female);
                              },
                              child: Obx(() => Container(
                                    height: 56,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: controller.selectedGender.value ==
                                              Gender.female
                                          ? AppColor.green
                                          : AppColor.white,
                                    ),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 30),
                                          child: Image(
                                            height: 24,
                                            width: 24,
                                            image: AssetImage(AppAssets.female),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        CustomText(
                                          title: 'Female',
                                          fontWeight:
                                              controller.selectedGender.value ==
                                                      Gender.female
                                                  ? FontWeight.bold
                                                  : FontWeight.w500,
                                          size: 16,
                                          color: controller
                                                      .selectedGender.value ==
                                                  Gender.female
                                              ? AppColor.white
                                              : AppColor
                                                  .black, // Provide a default color when the condition is not met
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const CustomText(
                          title: 'Price Range',
                          color: Colors.black,
                          size: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(
                              () => RangeSlider(
                                activeColor: AppColor.green,
                                min: 5,
                                max: 100,
                                divisions: 10,
                                labels: RangeLabels(
                                  "\$${controller.startval1.value}",
                                  "\$${controller.endval1.value}",
                                ),
                                values: RangeValues(
                                  controller.startval1.value,
                                  controller.endval1.value,
                                ),
                                onChanged: (RangeValues value) {
                                  controller.startval1.value = value.start;
                                  controller.endval1.value = value.end;
                                },
                              ),
                            ),
                            Obx(
                              () => Row(
                                children: [
                                  CustomText(
                                    title: '\$${controller.startval1.value}',
                                    size: 16,
                                    fontWeight: FontWeight.w900,
                                    color: AppColor.blacklight,
                                  ),
                                  const SizedBox(width: 40),
                                  CustomText(
                                    title: '\$${controller.endval1.value}',
                                    size: 16,
                                    fontWeight: FontWeight.w900,
                                    color: AppColor.blacklight,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Padding(
                              padding: EdgeInsets.only(right: 200),
                              child: CustomText(
                                alignment: TextAlign.left,
                                title: 'Price Range',
                                color: Colors.black,
                                size: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Specializationlist(),
                            const Padding(
                              padding: EdgeInsets.only(right: 220),
                              child: CustomText(
                                alignment: TextAlign.left,
                                title: 'Sort By',
                                color: Colors.black,
                                size: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Card(
                              child: Container(
                                height: 56,
                                width: 353,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white12,
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image(
                                      height: 14,
                                      width: 14,
                                      image: AssetImage(AppAssets.stand),
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CustomText(
                                      alignment: TextAlign.left,
                                      title: 'Popularity (Highest First)',
                                      color: Colors.black,
                                      size: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Image(
                                      height: 16,
                                      width: 16,
                                      image: AssetImage(AppAssets.dropdown),
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            PrimaryBTN(
                              callback: () {
                                Get.toNamed(
                                  AppRoutes.searchDoctor,
                                );
                              },
                              color: Color(0xff84CC16),
                              title: 'Filter Search (12)',
                              width: 343,
                              iconImage: const AssetImage(AppAssets.trling),
                            ),
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 0, top: 12),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
