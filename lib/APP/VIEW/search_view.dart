// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:testing_task/APP/VIEW/filter_doctor%20_search_view.dart';
import 'package:testing_task/APP/VIEW/searchdoctor.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Routes/app_routes.dart';
import 'package:testing_task/Theme/colors.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.toNamed(
        AppRoutes.browseAllDoctors,
      );
    });
  }

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
