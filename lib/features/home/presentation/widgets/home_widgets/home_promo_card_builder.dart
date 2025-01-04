import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'home_first_body_promo_card.dart';
import 'home_promo_card.dart';
import 'home_second_body_promo_card.dart';
import 'home_third_body_promo_card.dart';

class HomePromoCardBuilder extends StatelessWidget {
  const HomePromoCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        reverse: true,
        children: const [
          HomePromoCard(
            widget: HomeFirstBodyPromoCard(),
            colors: [
              kSecondOnBackgroundColor,
              kSecondOnBackgroundColor,
              kSecondColor
            ],
          ),
          HomePromoCard(
            widget: HomeSecondBodyPromoCard(),
            colors: [
              kSecondOnBackgroundColor,
              kSecondColor,
              kSecondOnBackgroundColor
            ],
          ),
          HomePromoCard(widget: HomeThirdBodyPromoCard(), colors: [
            kSecondColor,
            kSecondOnBackgroundColor,
            kSecondOnBackgroundColor
          ])
        ],
      ),
    );
  }
}
