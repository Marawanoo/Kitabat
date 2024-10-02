import 'package:flutter/material.dart';
import 'package:kitabat_app/core/utils/app_icons.dart';

import '../../../../../../constants.dart';
import '../home_book_card_item.dart';
import 'details_card_button.dart';
import 'details_rating_card.dart';

class DetailsCardItems extends StatelessWidget {
  const DetailsCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HomeBookCardItem(
          height: 0.22,
        ),
        Text(
          'كتاب سول',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          'اولف واستون',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const DetailsRatingCard(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DetailsCardButton(
              bColor: Colors.green.shade100,
              color: Colors.green.shade800,
              icon: AppIcons.headphoneIcon,
              text: 'استماع',
            ),
            DetailsCardButton(
              bColor: kSecondColor.withOpacity(0.2),
              color: kSecondColor,
              icon: AppIcons.bookIcon,
              text: 'اقرأ الان',
            ),
          ],
        )
      ],
    );
  }
}
