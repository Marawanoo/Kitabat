import 'package:flutter/material.dart';
import 'package:kitabat_app/core/utils/app_icons.dart';

import '../../../../widgets/custom_icon_button.dart';

class SearchFilterContainer extends StatelessWidget {
  const SearchFilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [
              Color(0xff2C3639),
              Color(0xff537895),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      child: CustomIconButton(
        icon: AppIcons.slidersIcon,
        color: Colors.white,
        size: 25,
        function: () {},
      ),
    );
  }
}
