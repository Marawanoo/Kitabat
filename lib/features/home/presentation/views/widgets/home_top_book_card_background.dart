import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_rating_card.dart';

class HomeTopBookCardBackground extends StatelessWidget {
  const HomeTopBookCardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.45 / 7,
            bottom: 12,
            left: 20),
        height: MediaQuery.of(context).size.height * 0.27,
        width: MediaQuery.of(context).size.width * 0.45,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.brown.withOpacity(0.3),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
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
