import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_best_books_body_card.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_best_books_card_bottom.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_best_books_top_card.dart';

class HomeBestBooksCard extends StatelessWidget {
  const HomeBestBooksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0.5,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HomeBestBooksTopCard(),
          const HomeBestBooksBodyCard(),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 7,
                    offset: const Offset(0, -5)),
              ]),
              child: const HomeBestBooksCardBottom())
        ],
      ),
    );
  }
}
