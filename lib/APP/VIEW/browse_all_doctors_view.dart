// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_task/APP/ViewModel/getx_viewmodel.dart';
import 'package:testing_task/Common/widgets/docator_Card.dart';
import 'package:testing_task/Common/widgets/docatorlist.dart';
import 'package:testing_task/Common/AppText/app_text.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Routes/app_routes.dart';
import 'package:testing_task/Theme/colors.dart';

class BrowseAllDoctors extends StatelessWidget {
  const BrowseAllDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SelectCardController controller = Get.put(SelectCardController());

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.background,
        body: SingleChildScrollView(
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
                                  Get.toNamed(
                                    AppRoutes.filterDoctorSearchView,
                                  );
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
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: CustomText(
                        title: 'Browse by Specializations',
                        color: Colors.black,
                        size: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Center(
                      child: CustomText(
                        title: 'See All',
                        color: AppColor.green,
                        size: 14,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const DoctorSearchlist(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          text: 'Osler AI Recommendation',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                          children: [
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 0, left: 5),
                      child: Image(
                        height: 24,
                        width: 24,
                        image: AssetImage(AppAssets.doot),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Container(
                  height: 187,
                  width: 343,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Image(
                            height: 96,
                            width: 127,
                            image: AssetImage(AppAssets.girlspic),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CustomText(
                                      title: 'Dr. Phos Gray',
                                      color: Colors.black,
                                      size: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image(
                                      height: 24,
                                      width: 24,
                                      image: AssetImage(AppAssets.tick),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  const Image(
                                    height: 16,
                                    width: 16,
                                    image: AssetImage(AppAssets.consu),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const CustomText(
                                    title: 'Orthopedic',
                                    color: Colors.black54,
                                    size: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 6,
                                    width: 6,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColor.greyText),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Image(
                                    height: 16,
                                    width: 16,
                                    image: AssetImage(AppAssets.location),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const CustomText(
                                    title: '501m',
                                    color: Colors.black,
                                    size: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomText(
                                    title:
                                        'Dr. Phos is a genius in all arts of \ndoctory. She’s truely a madlad in all...',
                                    color: Colors.black,
                                    size: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Obx(
                                () => Row(
                                  children: [
                                    ...List.generate(
                                      5,
                                      (index) => GestureDetector(
                                        onTap: () {
                                          controller.selectedStars.value =
                                              index + 1;
                                        },
                                        child: Icon(
                                          Icons.star,
                                          color: index <
                                                  controller.selectedStars.value
                                              ? AppColor.yellow
                                              : AppColor.lightgray,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Obx(() => CustomText(
                                          title: controller.selectedStars.value
                                              .toString(),
                                          color: Colors.black,
                                          size: 14,
                                          fontWeight: FontWeight.w900,
                                        )),
                                    const SizedBox(width: 8),
                                    const CustomText(
                                      title: '1.2k',
                                      color: Colors.black,
                                      size: 14,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 46,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          color: AppColor.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              CustomText(
                                title: 'Olser AI Match',
                                color: Colors.white,
                                size: 14,
                                fontWeight: FontWeight.w900,
                              ),
                              SizedBox(width: 20),
                              Image(
                                height: 24,
                                width: 24,
                                image: AssetImage(AppAssets.Vector),
                              ),
                              SizedBox(width: 100),
                              CustomText(
                                title: '99.571%',
                                color: Colors.white,
                                size: 14,
                                fontWeight: FontWeight.w900,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15, top: 10),
                child: Row(
                  children: [
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          text: '  Doctors Near You',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                          children: [
                            TextSpan(
                              text: '  (55)',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(top: 0, left: 5),
                      child: Image(
                        height: 24,
                        width: 24,
                        image: AssetImage(AppAssets.seating),
                      ),
                    ),
                  ],
                ),
              ),
              const DoctorCard(
                  name: 'Dr. Megumin Black',
                  specialty: 'Neurologist',
                  distance: '1.1km',
                  rating: 4.1,
                  phoneIcon: Icons.phone_callback_rounded,
                  messageIcon: Icons.message,
                  imagePath: AppAssets.girlspic),
              const DoctorCard(
                  name: 'Dr. William Brown',
                  specialty: 'Orthopedic',
                  distance: '50m',
                  rating: 4.5,
                  phoneIcon: Icons.phone_callback_rounded,
                  messageIcon: Icons.message,
                  imagePath: AppAssets.docpic),
              const DoctorCard(
                  name: 'Dr. William Brown',
                  specialty: 'Orthopedic',
                  distance: '50m',
                  rating: 4.5,
                  phoneIcon: Icons.phone_callback_rounded,
                  messageIcon: Icons.message,
                  imagePath: AppAssets.staffpic),
            ],
          ),
        ),
      ),
    );
  }
}
