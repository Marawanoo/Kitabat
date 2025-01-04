import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'home_sorting_books_container.dart';

class HomeSortingBooksList extends StatelessWidget {
  const HomeSortingBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.05,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        reverse: true,
        scrollDirection: Axis.horizontal,
        children: const [
          HomeSortingBooksContainer(
            title: 'كل الكتب',
            color: kSecondColor,
          ),
          HomeSortingBooksContainer(
            title: 'كتب مجانية',
            color: kSecondFontColor,
          ),
          HomeSortingBooksContainer(
            title: 'كتب صوتية',
            color: kSecondFontColor,
          ),
          HomeSortingBooksContainer(
            title: 'شراء الكتب',
            color: kSecondFontColor,
          ),
        ],
      ),
    );
  }
}
