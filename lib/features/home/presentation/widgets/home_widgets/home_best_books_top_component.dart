import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class HomeBestBooksTopComponent extends StatelessWidget {
  const HomeBestBooksTopComponent(
      {super.key,
      required this.title,
      this.isSelected = false,
      required this.color,
      this.isBorder = false});

  final String title;
  final bool isSelected;
  final Color color;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: color,
            borderRadius: isBorder
                ? const BorderRadius.only(bottomRight: Radius.circular(12))
                : null),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: isSelected
              ? null
              : BoxDecoration(
                  border: Border.all(color: kSecondOnBackgroundColor),
                  borderRadius: BorderRadius.circular(12),
                ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: isSelected
                ? Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: kSecondColor)
                : Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kSecondFontColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
