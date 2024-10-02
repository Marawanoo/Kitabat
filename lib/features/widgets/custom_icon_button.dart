import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.icon,
      this.alignment = Alignment.center,
      this.color = Colors.black,
      this.size = 27});
  final IconData? icon;
  final Alignment alignment;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: color,
      alignment: alignment,
      onPressed: () {},
      icon: Icon(
        icon,
        size: size,
      ),
    );
  }
}
