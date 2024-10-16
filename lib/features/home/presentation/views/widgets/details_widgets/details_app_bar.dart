import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_icons.dart';
import '../../../../../widgets/custom_icon_button.dart';

class DetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CustomIconButton(
        icon: AppIcons.menuIcon,
        function: () {},
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'كتاب سول',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          CustomIconButton(
            alignment: Alignment.centerRight,
            icon: AppIcons.chevronIcon,
            size: 30,
            function: () {},
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
