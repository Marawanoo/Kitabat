import 'package:flutter/material.dart';

class HomeCountPromoCard extends StatelessWidget {
  const HomeCountPromoCard({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 12.5,
          height: 12.5,
          decoration: BoxDecoration(
              color: colors[0], borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          width: 12.5,
          height: 12.5,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              color: colors[1], borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          width: 12.5,
          height: 12.5,
          decoration: BoxDecoration(
              color: colors[2], borderRadius: BorderRadius.circular(100)),
        )
      ],
    );
  }
}
