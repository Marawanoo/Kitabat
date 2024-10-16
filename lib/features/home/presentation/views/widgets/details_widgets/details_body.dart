import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/details_widgets/details_book_list.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/title_book_list.dart';

import 'details_card.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      children: const [
        DetailsCard(),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: TitleBookList()),
        DetailsBookList()
      ],
    );
  }
}
