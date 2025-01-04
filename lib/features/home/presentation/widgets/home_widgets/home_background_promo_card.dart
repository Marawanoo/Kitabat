import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class HomeBackgroundPromoCard extends StatelessWidget {
  const HomeBackgroundPromoCard({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        height: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(kBackgroundPromoCardImg),
          ),
        ),
        child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xff363795).withOpacity(0.9),
                  const Color(0xff005C97).withOpacity(0.9)
                ],
              ),
            ),
            child: widget));
  }
}
