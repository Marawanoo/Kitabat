import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_custom_button_promo_card.dart';

import '../../../../../constants.dart';

class HomeFirstBodyPromoCard extends StatelessWidget {
  const HomeFirstBodyPromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          kPromoCardIconImg,
          height: 160,
          fit: BoxFit.fill,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
                child: Text(
                  textDirection: TextDirection.rtl,
                  maxLines: 2,
                  'إضافة 100 كتاب مجاناً',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white),
                ),
              ),
              const HomeCustomButtonPromoCard()
            ],
          ),
        )
      ],
    );
  }
}
