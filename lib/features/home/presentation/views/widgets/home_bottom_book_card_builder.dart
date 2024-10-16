import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_bottom_book_card.dart';

class HomeBottomBookCardBuilder extends StatelessWidget {
  const HomeBottomBookCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10, crossAxisCount: 2, childAspectRatio: 0.65),
        itemBuilder: (context, index) => const HomeBottomBookCard());
  }
}
