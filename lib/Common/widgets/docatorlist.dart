import 'package:flutter/material.dart';
import 'package:testing_task/Common/AppText/app_text.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Theme/colors.dart';

class DoctorSearchlist extends StatelessWidget {
  const DoctorSearchlist({Key? key});

  @override
  Widget build(BuildContext context) {
    // Dummy data representing doctor categories
    final List<Map<String, dynamic>> doctorCategories = [
      {
        'color': Colors.blue,
        'icon': AppAssets.heart,
        'text': 'Heart',
      },
      {
        'color': AppColor.greencontainer,
        'icon': AppAssets.bone,
        'text': 'Bone',
      },
      {
        'color': AppColor.redcontianer,
        'icon': AppAssets.subtract,
        'text': 'Nutrition',
      },
      {
        'color': AppColor.browncontainer,
        'icon': AppAssets.teeth,
        'text': 'Tooth',
      },
      {
        'color': AppColor.blueText,
        'icon': AppAssets.disease,
        'text': 'Disease',
      },
      {
        'color': Colors.green, // Example color
        'icon': AppAssets.bone, // Example icon
        'text': 'Nutrition', // Example text
      },
      // Add more categories as needed
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctorCategories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: _buildDoctorCategory(
              color: doctorCategories[index]['color'],
              icon: doctorCategories[index]['icon'],
              text: doctorCategories[index]['text'],
            ),
          );
        },
      ),
    );
  }

  Widget _buildDoctorCategory({
    required Color color,
    required String icon,
    required String text,
  }) {
    return Column(
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Center(
            child: Image(
              height: 20,
              width: 16,
              image: AssetImage(icon),
            ),
          ),
        ),
        const SizedBox(height: 8),
        CustomText(
          title: text,
          color: AppColor.black,
          size: 14,
          fontWeight: FontWeight.w900,
        ),
      ],
    );
  }
}
