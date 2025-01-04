import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_best_books_top_component.dart';

import '../../../../../constants.dart';

class HomeBestBooksTopCard extends StatelessWidget {
  const HomeBestBooksTopCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      kBackgroundColor,
      kBackgroundColor,
      Colors.white
    ];
    return Row(
      children: [
        HomeBestBooksTopComponent(
          title: 'كتاب الشهر',
          color: colors[0],
        ),
        HomeBestBooksTopComponent(
          title: 'كتاب الأسبوع',
          color: colors[1],
          isBorder: true,
        ),
        HomeBestBooksTopComponent(
          title: 'اقتباس اليوم',
          isSelected: true,
          color: colors[2],
        )
      ],
    );
  }
}
