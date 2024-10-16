import 'package:flutter/material.dart';

import '../../../../../core/utils/app_icons.dart';
import '../../../../widgets/custom_icon_button.dart';

class HomeBookCardItem extends StatelessWidget {
  const HomeBookCardItem(
      {super.key,
      this.borderRadius = 12,
      this.width = 0.32,
      this.height = 0.24,
      this.padding = 3});
  final double borderRadius;
  final double width;
  final double height;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      padding: EdgeInsets.only(right: padding),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/Brown Rusty Mystery Novel Book Cover.jpg',
            fit: BoxFit.fill,
          ),
          Positioned(
            top: -14,
            right: -5,
            child: CustomIconButton(
              icon: AppIcons.bookmarkIcon,
              color: Colors.amber,
              function: () {},
            ),
          )
        ],
      ),
    );
  }
}
