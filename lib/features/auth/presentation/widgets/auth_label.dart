import 'package:flutter/material.dart';

import '../../../widgets/custom_text_button.dart';

class AuthLabel extends StatelessWidget {
  const AuthLabel(
      {super.key,
      required this.function,
      required this.title,
      required this.textButton});

  final void Function() function;
  final String title;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextButton(
          text: textButton,
          function: function,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}
