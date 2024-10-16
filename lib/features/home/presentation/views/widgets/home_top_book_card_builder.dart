import 'package:flutter/material.dart';
import 'package:kitabat_app/constants.dart';

import 'home_top_book_card.dart';

class HomeTopBookCardBuilder extends StatelessWidget {
  const HomeTopBookCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, kBookDetailsView),
      child: Container(
        padding: const EdgeInsets.only(right: 10),
        height: MediaQuery.of(context).size.height * 0.38,
        child: ListView.builder(
          reverse: true,
          itemBuilder: (context, index) => const HomeTopBookCard(),
          itemCount: 3,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
