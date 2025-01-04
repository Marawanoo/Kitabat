import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer(
      {super.key,
      required this.title,
      required this.count,
      required this.icon,
      this.isDeleted = false});

  final String title;
  final String count;
  final IconData icon;
  final bool isDeleted;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            count,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: isDeleted ? const Color(0xffe82b34) : null),
          ),
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: isDeleted ? const Color(0xffe82b34) : null),
        ),
        const SizedBox(
          width: 15,
        ),
        Icon(
          color: isDeleted ? const Color(0xffe82b34) : null,
          icon,
          size: 23,
        )
      ],
    );
  }
}
