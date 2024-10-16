import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_book_card_item.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_top_book_card_background.dart';

class HomeTopBookCard extends StatelessWidget {
  const HomeTopBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27,
      width: MediaQuery.of(context).size.width * 0.45,
      margin: const EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          const HomeTopBookCardBackground(),
          Positioned(
              top: 15,
              left: MediaQuery.of(context).size.width * 0.32 / 5,
              child: const HomeBookCardItem())
        ],
      ),
    );
  }
}
