import 'package:flutter/material.dart';
import 'package:kitabat_app/constants.dart';
import 'package:kitabat_app/core/utils/app_icons.dart';
import 'package:kitabat_app/features/home/presentation/widgets/menu_widgets/menu_container_item.dart';
import 'package:kitabat_app/features/widgets/custom_icon_button.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kBackgroundColor,
        title: Align(
          alignment: Alignment.centerRight,
          child: CustomIconButton(
            icon: AppIcons.chevronIcon,
            size: 35,
            function: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          const MenuContainerItem(
            title: 'عن كتابات',
            icon: kLogoIconImg,
          ),
          const MenuContainerItem(
              title: 'أماكن تواجدنا', icon: AppIcons.shopIcon),
          const MenuContainerItem(
              title: 'تواصل معنا', icon: AppIcons.questionIcon),
          const MenuContainerItem(
              title: 'شروط وأحكام', icon: AppIcons.paperIcon),
          const MenuContainerItem(
              title: 'سياسية الخصوصية', icon: AppIcons.privacyIcon)
        ],
      ),
    );
  }
}
