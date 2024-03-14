import 'package:flutter/material.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Theme/colors.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: Container(
          color: AppColor.green,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.green.withOpacity(0.5),
                  BlendMode.overlay,
                ),
                image: const AssetImage(
                  AppAssets.ontab,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
