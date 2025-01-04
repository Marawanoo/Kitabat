import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.title,
      required this.color,
      this.function,
      this.size = const Size(275, 25),
      this.fontColor = Colors.black,
      this.widget});

  final String title;
  final Color color;
  final Size size;
  final Color fontColor;
  final Widget? widget;

  // final double radius;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: color,
          fixedSize: size,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: widget ??
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: fontColor),
          ),
    );
  }
}
