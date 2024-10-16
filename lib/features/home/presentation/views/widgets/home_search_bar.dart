import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/search_filter_container.dart';
import 'package:kitabat_app/features/widgets/custom_text_field.dart';

import '../../../../../core/utils/app_icons.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          SearchFilterContainer(),
          Spacer(),
          CustomTextField(
            hintText: 'ابحث عن كتاب, كاتب, دار نشر...',
            suffixIcon: AppIcons.searchIcon,
            validatorText: '',
          )
        ],
      ),
    );
  }
}
