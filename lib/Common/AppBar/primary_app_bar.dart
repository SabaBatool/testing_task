import 'package:flutter/material.dart';
import 'package:testing_task/Common/AppText/app_text.dart';
import 'package:testing_task/Theme/colors.dart';

class PrimaryAppBar extends StatelessWidget {
  final bool isEdit;
  final bool isBackIcon;
  final String title;
  final VoidCallback? onEdit;
  final VoidCallback? onAdd;

  const PrimaryAppBar(
      {super.key,
      this.isBackIcon = false,
      this.isEdit = false,
      this.onAdd,
      this.onEdit,
      this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
      child: Row(
        children: [
          if (isBackIcon)
            IconButton(
                iconSize: 44,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 30,
                )),
          const Spacer(),
          if (isEdit)
            const SizedBox(
              width: 44,
            ),
          if (title.isNotEmpty)
            CustomText(
              title: title,
              size: 24,
              color: AppColor.white,
              fontWeight: FontWeights.medium,
            ),
          const Spacer(),
          if (isEdit == false)
            const SizedBox(
              width: 44,
            ),
          if (onAdd != null)
            IconButton(
                onPressed: () {
                  if (onAdd != null) {
                    onAdd!();
                  }
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                )),
          // if (isEdit)
          if (onEdit == null)
            const SizedBox(
              width: 30,
            ),
          if (onEdit != null)
            TextButton(
              onPressed: () {
                if (onEdit != null) {
                  onEdit!();
                }
              },
              child: const CustomText(
                title: "Edit",
                size: 20,
                color: AppColor.grey,
                fontWeight: FontWeights.medium,
              ),
            )
        ],
      ),
    );
  }
}
