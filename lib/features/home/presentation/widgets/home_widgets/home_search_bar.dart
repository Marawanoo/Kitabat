import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/widgets/search_filter_container.dart';
import 'package:kitabat_app/features/widgets/custom_text_field.dart';

import '../../../../../../core/utils/app_icons.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          const SearchFilterContainer(),
          const Spacer(),
          SizedBox(
            height: 45,
            child: CustomTextField(
              hintText: 'ابحث عن كتاب, كاتب, دار نشر...',
              suffixIcon: AppIcons.searchIcon,
              validatorText: '',
              onSaved: (value) {},
              isSearch: true,
              width: 0.7,
            ),
          )
        ],
      ),
    );
  }
}
