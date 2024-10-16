import 'package:flutter/material.dart';

import '../home_book_card_item.dart';

class DetailsBookList extends StatelessWidget {
  const DetailsBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        reverse: true,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(left: 5),
          child: HomeBookCardItem(
            width: 0.3,
            padding: 0,
          ),
        ),
      ),
    );
  }
}
