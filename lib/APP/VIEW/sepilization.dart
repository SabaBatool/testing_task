import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_task/Common/AppBTN/primary_btn.dart';
import 'package:testing_task/Common/AppBar/grid_view.dart';
import 'package:testing_task/Common/AppText/app_text.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Routes/app_routes.dart';
import 'package:testing_task/Theme/colors.dart';

class Specilization extends StatelessWidget {
  const Specilization({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 15),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 0, left: 0),
                  child: Image(
                    height: 48,
                    width: 48,
                    image: AssetImage(AppAssets.arrow),
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const CustomText(
                title: 'Select Specilization',
                color: Colors.black,
                size: 16,
                fontWeight: FontWeight.w900,
              ),
              const SizedBox(
                height: 4,
              ),
              const CustomText(
                title: 'Select before booking appointment',
                color: AppColor.lightgray,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 6.0,
                  childAspectRatio:
                      (MediaQuery.of(context).size.width / 2) / 100,
                  shrinkWrap: true,
                  children: List.generate(
                    choices.length,
                    (index) {
                      return Center(
                        child: SelectCard(
                          choice: choices[index],
                          index: index,
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              PrimaryBTN(
                callback: () {
                  Get.toNamed(
                    AppRoutes.searchView,
                  );
                },
                color: AppColor.green,
                title: 'Search Doctors',
                width: 343,
                iconImage: const AssetImage(AppAssets.arrow),
              ),
              // const Spacer(),
              const SizedBox(
                height: 35,
              ),
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
          ),
        ),
      ),
    );
  }
}
