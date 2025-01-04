import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_background_promo_card.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_count_promo_card.dart';

class HomePromoCard extends StatelessWidget {
  const HomePromoCard({super.key, required this.widget, required this.colors});

  final List<Color> colors;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeBackgroundPromoCard(widget: widget),
        const Spacer(),
        HomeCountPromoCard(colors: colors),
      ],
    );
  }
}
