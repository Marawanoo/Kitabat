import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_icons.dart';

class DetailsRatingCard extends StatelessWidget {
  const DetailsRatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.4,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            size: 18,
            AppIcons.starIcon,
            color: Colors.white,
          ),
          Icon(
            size: 18,
            AppIcons.starIcon,
            color: Colors.orangeAccent,
          ),
          Icon(
            size: 18,
            AppIcons.starIcon,
            color: Colors.orangeAccent,
          ),
          Icon(
            size: 18,
            AppIcons.starIcon,
            color: Colors.orangeAccent,
          ),
          Icon(
            size: 18,
            AppIcons.starIcon,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
