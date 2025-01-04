import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_custom_text_promo_card.dart';

import 'home_book_card_item.dart';
import 'home_custom_button_promo_card.dart';

class HomeSecondBodyPromoCard extends StatelessWidget {
  const HomeSecondBodyPromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HomeCustomTextPromoCard(
                text: 'خصم 25% علي المترجمات',
              ),
              HomeCustomButtonPromoCard()
            ],
          ),
        ),
        const Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: 10,
                top: 10,
                child: HomeBookCardItem(
                  width: 0.21,
                  height: 0.15,
                  image:
                      'https://cdn.aseeralkotb.com/storage/media/420193/conversions/%D9%83%D9%8A%D9%81-%D8%AA%D8%A8%D9%8A%D8%B9-%D8%A3%D9%8A-%D8%B4%D9%8A%D8%A1-%D9%84%D8%A3%D9%8A-%D8%A5%D9%86%D8%B3%D8%A7%D9%86-44940-250x375-webp.webp',
                ),
              ),
              Positioned(
                top: 30,
                right: 70,
                child: HomeBookCardItem(
                  width: 0.21,
                  height: 0.15,
                  image:
                      'https://cdn.aseeralkotb.com/storage/media/360398/conversions/%D8%B5%D9%86%D8%A7%D8%B9%D8%A9-%D8%A7%D9%84%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE-38019-250x375-webp.webp',
                ),
              ),
              Positioned(
                top: 50,
                right: 120,
                child: HomeBookCardItem(
                  width: 0.21,
                  height: 0.15,
                  image:
                      'https://cdn.aseeralkotb.com/storage/media/358014/conversions/%D8%A7%D9%84%D9%85%D9%84%D9%8A%D9%88%D9%86%D9%8A%D8%B1-%D8%A7%D9%84%D8%B5%D8%BA%D9%8A%D8%B1-37536-250x375-webp.webp',
                ),
              ),
              Positioned(
                top: 80,
                right: 30,
                child: HomeBookCardItem(
                  width: 0.18,
                  height: 0.12,
                  image:
                      'https://cdn.aseeralkotb.com/storage/media/357831/conversions/%D8%A2%D9%86-%D9%81%D9%8A-%D8%A7%D9%84%D8%AC%D8%B2%D9%8A%D8%B1%D8%A9-37501-250x375-webp.webp',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
