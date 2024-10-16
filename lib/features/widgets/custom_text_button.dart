import 'package:flutter/material.dart';
import 'package:kitabat_app/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, this.textStyle, required this.text, required this.function});

  final TextStyle? textStyle;
  final String text;
  final void Function() function;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
        overlayColor: Colors.transparent,
      ),
      child: Text(
        textDirection: TextDirection.rtl,
        text,
        style: textStyle ??
            Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: kSecondColor),
      ),
    );
  }
}
