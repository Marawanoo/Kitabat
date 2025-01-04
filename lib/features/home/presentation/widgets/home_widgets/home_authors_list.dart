import 'package:flutter/material.dart';

class HomeAuthorsList extends StatelessWidget {
  const HomeAuthorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.29,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Card(
          margin: const EdgeInsets.only(right: 10, bottom: 10),
          color: Colors.white,
          clipBehavior: Clip.hardEdge,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    height: 150,
                    width: 125,
                    'assets/images/أحمد_خالد_توفيق.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  'احمد خالد توفيق',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
