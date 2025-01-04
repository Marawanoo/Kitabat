import 'package:flutter/material.dart';

import '../../../../core/utils/app_icons.dart';
import '../../../widgets/custom_icon_button.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'الأشعارات',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            CustomIconButton(
              icon: AppIcons.chevronIcon,
              size: 35,
              function: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
