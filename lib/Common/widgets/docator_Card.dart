import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Theme/colors.dart';
import 'package:testing_task/Common/AppText/app_text.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String distance;
  final String imagePath;
  final IconData phoneIcon;
  final IconData messageIcon;

  const DoctorCard({
    Key? key,
    required this.name,
    required this.imagePath,
    required this.specialty,
    required this.distance,
    required this.phoneIcon,
    required this.messageIcon,
    required double rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DoctorController>(
      init: DoctorController(), // Initialize the controller
      builder: (controller) {
        return Slidable(
          endActionPane: ActionPane(
            motion: const BehindMotion(),
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.green,
                ),
                child: SlidableAction(
                  borderRadius: BorderRadius.circular(20),
                  backgroundColor: AppColor.green,
                  onPressed: (context) {},
                  label: '',
                  icon: Icons.phone_callback,
                  autoClose: true,
                  padding: const EdgeInsets.all(17),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.green,
                ),
                child: SlidableAction(
                  borderRadius: BorderRadius.circular(20),
                  backgroundColor: AppColor.black,
                  onPressed: (context) {},
                  label: '',
                  icon: Icons.message,
                  autoClose: true,
                  padding: const EdgeInsets.all(17),
                ),
              ),
            ],
          ),
          child: Card(
            child: Container(
              height: 120,
              width: 343,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image(
                        height: 96,
                        width: 127,
                        image: AssetImage(imagePath),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomText(
                                  title: name,
                                  color: Colors.black,
                                  size: 16,
                                  fontWeight: FontWeight.w900,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  height: 16,
                                  width: 16,
                                  color: AppColor.green,
                                  image: AssetImage(AppAssets.seating),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              const Image(
                                height: 16,
                                width: 16,
                                // ignore: unnecessary_const
                                image: const AssetImage(AppAssets.consu),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              CustomText(
                                title: specialty,
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
                                  color: AppColor.greyText,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Image(
                                height: 16,
                                width: 16,
                                // ignore: unnecessary_const
                                image: const AssetImage(AppAssets.location),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomText(
                                title: distance,
                                color: Colors.black,
                                size: 14,
                                fontWeight: FontWeight.w900,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              ...List.generate(
                                5,
                                (index) => GestureDetector(
                                  onTap: () {
                                    controller.updateRating(index + 1);
                                  },
                                  child: Obx(() => Icon(
                                        Icons.star,
                                        color: index < controller.rating.value
                                            ? AppColor.yellow
                                            : AppColor.lightgray,
                                      )),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Obx(() => CustomText(
                                    title: controller.rating.value.toString(),
                                    color: Colors.black,
                                    size: 14,
                                    fontWeight: FontWeight.w900,
                                  )),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class DoctorController extends GetxController {
  RxDouble rating = 0.0.obs;

  void updateRating(double newRating) {
    rating.value = newRating;
  }
}
