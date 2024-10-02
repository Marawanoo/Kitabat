import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_custom_text_button.dart';

class TitleBookList extends StatelessWidget {
  const TitleBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HomeCustomTextButton(),
        Text(
          'الأكثر مبيعا',
          style: Theme.of(context).textTheme.headlineSmall,
        )
      ],
    );
  }
}
