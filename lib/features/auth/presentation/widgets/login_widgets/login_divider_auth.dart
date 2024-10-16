import 'package:flutter/material.dart';

class LoginDividerAuth extends StatelessWidget {
  const LoginDividerAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.white,
            height: 2,
          ),
        ),
        Text(
          'أو تسجيل الدخول باستخدام',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Expanded(
          child: Divider(
            color: Colors.white,
            height: 2,
          ),
        ),
      ],
    );
  }
}
