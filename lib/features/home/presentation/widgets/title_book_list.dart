import 'package:flutter/material.dart';

import 'home_widgets/home_custom_text_button.dart';

class TitleBookList extends StatelessWidget {
  const TitleBookList({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HomeCustomTextButton(),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        )
      ],
    );
  }
}
