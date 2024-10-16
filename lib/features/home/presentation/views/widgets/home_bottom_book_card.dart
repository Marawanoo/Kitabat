import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_book_card_item.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_rating_card.dart';

import '../../../../../constants.dart';

class HomeBottomBookCard extends StatelessWidget {
  const HomeBottomBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      elevation: 0,
      color: kSecondColor.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HomeBookCardItem(
              borderRadius: 12,
              height: 0.25,
              width: 0.4,
            ),
            Text(
              'كتاب سول',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'اولف واستون',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const HomeRatingCard()
          ],
        ),
      ),
    );
  }
}
