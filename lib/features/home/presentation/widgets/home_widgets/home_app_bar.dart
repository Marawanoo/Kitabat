import 'package:flutter/material.dart';
import 'package:kitabat_app/constants.dart';
import 'package:kitabat_app/core/utils/app_icons.dart';
import 'package:kitabat_app/features/widgets/custom_icon_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        CustomIconButton(
          icon: AppIcons.menuIcon,
          alignment: Alignment.centerRight,
          function: () => Navigator.pushNamed(context, kMenuView),
        ),
        CustomIconButton(
          icon: AppIcons.notificationIcon,
          alignment: Alignment.centerLeft,
          function: () => Navigator.pushNamed(context, kNotificationsView),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, kProfileView),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'مرحبا بك',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'أحمد محمد',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, kProfileView),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                kProfileImg,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
