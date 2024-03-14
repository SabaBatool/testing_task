import 'package:flutter/material.dart';
import 'package:testing_task/Constant/custom_assets.dart';
import 'package:testing_task/Theme/colors.dart';

class SearchField extends StatefulWidget {
  final String hint;
  const SearchField({Key? key, this.hint = "Search here"}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  String searchTXT = "";
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        focusNode: FocusNode(),
        onEditingComplete: () {},
        textInputAction: TextInputAction.search,
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        // cursorColor: AppColor().primaryColor,
        decoration: InputDecoration(
            filled: true,
            contentPadding: const EdgeInsets.only(top: 0, bottom: 10),
            fillColor: AppColor.lightBG,
            prefixIcon: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Image(
                image: AssetImage(AppAssets.arrow),
                height: 14,
                width: 14,
                color: AppColor.greyText,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(24)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(24)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(24)),
            disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(24)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(24)),
            hintText: widget.hint,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  searchTXT = "";
                  controller.clear();
                });
              },
              child: searchTXT.isNotEmpty
                  ? Icon(
                      Icons.cancel_rounded,
                      color: AppColor.greyText.withOpacity(0.5),
                      size: 20,
                    )
                  : const SizedBox(
                      height: 0,
                      width: 20,
                    ),
            ),
            hintStyle: const TextStyle(
              color: Color(0xff7D848D),
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeights.medium,
            )),
        onChanged: (value) {
          setState(() {
            searchTXT = value;
          });
        },
      ),
    );
  }
}
