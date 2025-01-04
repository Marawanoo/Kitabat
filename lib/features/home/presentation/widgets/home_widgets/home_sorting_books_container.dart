import 'package:flutter/material.dart';

class HomeSortingBooksContainer extends StatelessWidget {
  const HomeSortingBooksContainer(
      {super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: color),
      ),
    );
  }
}
