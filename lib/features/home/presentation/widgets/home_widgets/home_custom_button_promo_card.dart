import 'package:flutter/material.dart';

class HomeCustomButtonPromoCard extends StatelessWidget {
  const HomeCustomButtonPromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(100, 25),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colors.white),
      onPressed: () {},
      child: Text(
        'أقرأ الآن',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
