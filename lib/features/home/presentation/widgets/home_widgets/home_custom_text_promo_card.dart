import 'package:flutter/material.dart';

class HomeCustomTextPromoCard extends StatelessWidget {
  const HomeCustomTextPromoCard({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7.5),
      child: Text(
        textDirection: TextDirection.rtl,
        maxLines: 2,
        text,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
