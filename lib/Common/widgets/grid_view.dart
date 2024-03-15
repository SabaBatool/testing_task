import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_task/APP/ViewModel/getx_viewmodel.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Theme/colors.dart';

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final String icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Cardiologist', icon: AppAssets.heart),
  Choice(title: 'Psychiatrist', icon: AppAssets.psychiatrist),
  Choice(title: 'Pharmacist', icon: AppAssets.rightscan),
  Choice(title: 'Physiologist', icon: AppAssets.clinician),
  Choice(title: 'Physician', icon: AppAssets.clinician),
  Choice(title: 'Clinician', icon: AppAssets.clinician),
  Choice(title: 'Virologist', icon: AppAssets.virologist),
  Choice(title: 'Consultation', icon: AppAssets.clinician),
  Choice(title: 'Teeth', icon: AppAssets.teeth),
  Choice(title: 'Nutritionist', icon: AppAssets.nutritionist),
];

class SelectCard extends StatelessWidget {
  SelectCard({Key? key, required this.choice, required this.index})
      : super(key: key);
  final Choice choice;
  final int index;
  final SelectCardController controller = Get.put(SelectCardController());

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Obx(() {
        final bool isTapped = controller.isTappedList[index];
        return InkWell(
          onTap: () {
            isTapped
                ? controller.handleTapCancel(index)
                : controller.handleTap(index);
          },
          onTapCancel: () {
            controller.handleTapCancel(index);
          },
          child: Container(
            height: 72,
            width: 163,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 3),
                ),
              ],
              color: isTapped ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: isTapped ? Colors.grey : Colors.transparent,
                width: 5,
              ),
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: AppColor.grey,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: ImageIcon(
                          AssetImage(choice.icon),
                          size: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    choice.title,
                    style: TextStyle(
                      color: isTapped ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
