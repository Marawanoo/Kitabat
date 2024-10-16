import 'package:flutter/material.dart';

class CustomAuthBackground extends StatelessWidget {
  const CustomAuthBackground({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff0093E9), Color(0xff80D0C7)],
          begin: Alignment.topCenter,
        )),
        child: Center(child: widget),
      ),
    );
  }
}
