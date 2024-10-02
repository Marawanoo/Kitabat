import 'package:flutter/material.dart';
import 'package:kitabat_app/core/utils/app_icons.dart';

class HomeRatingCard extends StatelessWidget {
  const HomeRatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Baseline(
          baseline: 15,
          baselineType: TextBaseline.alphabetic,
          child: Text(
            '3.0',
            textAlign: TextAlign.center,
            style:
                Theme.of(context).textTheme.titleSmall!.copyWith(height: 0.5),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        const Icon(
          AppIcons.starIcon,
          size: 15,
          color: Colors.orange,
        )
      ],
    );
  }
}
