import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.title,
      required this.color,
      this.function,
      this.size = const Size(275, 25)});

  final String title;
  final Color color;
  final Size size;
  // final double radius;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          backgroundColor: color,
          fixedSize: size,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Text(title, style: Theme.of(context).textTheme.headlineSmall
          // .copyWith(fontSize: size, color: Colors.white),
          ),
    );
  }
}
