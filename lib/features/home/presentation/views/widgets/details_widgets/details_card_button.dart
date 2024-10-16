import 'package:flutter/material.dart';

class DetailsCardButton extends StatelessWidget {
  const DetailsCardButton(
      {super.key,
      required this.bColor,
      required this.color,
      required this.icon,
      required this.text});
  final Color bColor;
  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: bColor, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          minVerticalPadding: -2,
          minTileHeight: 0,
          horizontalTitleGap: 0,
          title: Icon(
            icon,
            color: color,
            size: 25,
          ),
          leading: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(height: 4, color: color),
          ),
        ),
      ),
    );
  }
}
