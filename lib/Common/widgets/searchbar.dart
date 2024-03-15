import 'package:flutter/material.dart';
import 'package:testing_task/Theme/colors.dart';

class SearchBarview extends StatelessWidget {
  final Widget leading;
  final String hintText;
  final Widget trailing;

  const SearchBarview({
    Key? key,
    required this.leading,
    required this.hintText,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(width: 1, color: AppColor.green)),
        child: Row(
          children: [
            SizedBox(width: 10),
            leading,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none, // Hide border of TextField
                  ),
                ),
              ),
            ),
            trailing,
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
