import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_icons.dart';
import 'home_book_card_item.dart';
import 'home_rating_card.dart';

class HomeBottomBookCard extends StatelessWidget {
  const HomeBottomBookCard(
      {super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.fromLTRB(0, 5, 15, 10),
      elevation: 0,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
            child: HomeBookCardItem(
              borderRadius: 12,
              height: 0.25,
              width: 0.35,
              image: image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              maxLines: 1,
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'اولف واستون',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(width: 100, child: HomeRatingCard()),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.05,
            width: MediaQuery.sizeOf(context).width,
            color: kSecondOnBackgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'إضافة إلي مكتبتي',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: kSecondFontColor, fontSize: 17),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  AppIcons.addBookIcon,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
