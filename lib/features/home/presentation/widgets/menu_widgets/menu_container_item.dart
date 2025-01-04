import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class MenuContainerItem extends StatelessWidget {
  const MenuContainerItem({super.key, required this.title, required this.icon});

  final String title;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width,
      height: height * 0.08,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 7.5),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: kSecondBackgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            width: 15,
          ),
          title == 'عن كتابات'
              ? Image.asset(
                  icon,
                  width: 30,
                )
              : Icon(
                  icon,
                  size: 27,
                )
        ],
      ),
    );
  }
}
