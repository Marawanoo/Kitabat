import 'package:flutter/material.dart';

import '../../../../../../constants.dart';



class DetailsCardPrice extends StatelessWidget {
  const DetailsCardPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
          color: Colors.white,
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(16))),
      child: Text(
        textDirection: TextDirection.rtl,
        "315 ج.م.",
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: kSecondColor),
      ),
    );
  }
}
