import 'package:flutter/material.dart';
import 'package:kitabat_app/core/utils/app_icons.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 40,
      child: TextFormField(
        cursorColor: kSecondColor,
        scrollPadding: EdgeInsets.zero,
        textAlignVertical: TextAlignVertical.bottom,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          hintText: 'ابحث عن كتاب, كاتب, دار نشر...',
          hintTextDirection: TextDirection.rtl,
          hintStyle: Theme.of(context).textTheme.labelMedium,
          suffixIcon: const Icon(AppIcons.searchIcon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: kSecondColor, width: 2)),
        ),
      ),
    );
  }
}
