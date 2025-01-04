import 'package:flutter/material.dart';

import 'home_book_card_item.dart';
import 'home_custom_button_promo_card.dart';
import 'home_custom_text_promo_card.dart';

class HomeThirdBodyPromoCard extends StatelessWidget {
  const HomeThirdBodyPromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 120,
                top: 10,
                child: HomeBookCardItem(
                  width: 0.21,
                  height: 0.15,
                  image:
                      'https://cdn.aseeralkotb.com/storage/media/419638/conversions/%D9%81%D8%A6%D8%A9-%D8%AA%D8%B3%D8%AA%D8%AD%D9%82-%D8%A7%D9%84%D9%86%D8%AC%D8%A7%D8%A9-44953-250x375-webp.webp',
                ),
              ),
              Positioned(
                top: 30,
                left: 70,
                child: HomeBookCardItem(
                    width: 0.21,
                    height: 0.15,
                    image:
                        'https://cdn.aseeralkotb.com/storage/media/405697/conversions/%D8%A8%D8%AF%D8%A7%D9%81%D8%B9-%D8%A7%D9%84%D9%82%D8%AA%D9%84-43904-250x375-webp.webp'),
              ),
              Positioned(
                top: 50,
                left: 10,
                child: HomeBookCardItem(
                    width: 0.21,
                    height: 0.15,
                    image:
                        'https://cdn.aseeralkotb.com/storage/media/337184/conversions/%D8%A7%D9%84%D8%B9%D9%85%D9%84%D9%8A%D8%A9-%D8%A7%D9%84%D8%A7%D8%AE%D9%8A%D8%B1%D8%A9-%D9%84%D9%84%D9%82%D8%A7%D8%AA%D9%84%D8%A9-%D8%A7%D9%84%D9%85%D8%A7%D8%AC%D9%88%D8%B1%D8%A9-32900-250x375-webp.webp'),
              ),
              Positioned(
                top: 80,
                left: 120,
                child: HomeBookCardItem(
                    width: 0.18,
                    height: 0.12,
                    image:
                        'https://cdn.aseeralkotb.com/storage/media/337133/conversions/%D8%AC%D8%B1%D9%8A%D9%85%D8%A9-%D8%A7%D9%84%D8%A7%D8%AE-%D8%A7%D9%84%D8%A7%D8%B5%D8%BA%D8%B1-32894-250x375-webp.webp'),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HomeCustomTextPromoCard(
                text: 'الفانتازيا الأكثر مبيعاً',
              ),
              HomeCustomButtonPromoCard()
            ],
          ),
        ),
      ],
    );
  }
}
