import 'package:flutter/material.dart';

class LoginCustomSocialAuth extends StatelessWidget {
  const LoginCustomSocialAuth(
      {super.key,
      required this.icon,
      required this.color,
      required this.onTap});

  final IconData icon;
  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Icon(
          icon,
          color: color,
          size: 28,
        ),
      ),
    );
  }
}
