import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class HomeCustomTextButton extends StatelessWidget {
  const HomeCustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: kSecondColor))),
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Text('عرض المزيد',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: kSecondColor,
                )),
        onPressed: () {},
      ),
    );
  }
}
