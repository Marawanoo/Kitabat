import 'package:flutter/material.dart';
import 'package:kitabat_app/core/utils/app_icons.dart';

class HomeRatingCard extends StatelessWidget {
  const HomeRatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          AppIcons.starIcon,
          size: 15,
          color: Colors.yellow,
        ),
        Icon(
          AppIcons.starIcon,
          size: 15,
          color: Colors.yellow,
        ),
        Icon(
          AppIcons.starIcon,
          size: 15,
          color: Colors.yellow,
        ),
        Icon(
          AppIcons.starIcon,
          size: 15,
          color: Colors.yellow,
        ),
        Icon(
          AppIcons.starIcon,
          size: 15,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
