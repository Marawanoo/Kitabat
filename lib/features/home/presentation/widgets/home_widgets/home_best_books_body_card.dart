import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_rating_card.dart';

import '../../../../../constants.dart';
import 'home_book_card_item.dart';

class HomeBestBooksBodyCard extends StatelessWidget {
  const HomeBestBooksBodyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.535,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'سيروش',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: HomeRatingCard()),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'د. حنان لاشين',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: kSecondFontColor, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                    overflow: TextOverflow.ellipsis,
                    textDirection: TextDirection.rtl,
                    maxLines: 5,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: kSecondFontColor,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    'سيروش بقلم حنان لاشين ... كان يشعر بألمٍ شديد ينخر عظامَه ورأسَه، أخذ يضرب على جبهته بقبضته كالمجنون، دارت عيناه في المكان كما لو أنهما تحرَّرتا من عقال، خالجه شعور بالخوف وصار يرتجف كورقة شجرة في مهبِّ الرياح. انتفضت ذراعاه فجأة فدفع أبويه وسقطا على الأرض، ثم وقف وسط غرفته لينبثق ضوءٌ متموِّج خلَّا'),
              )
            ],
          ),
        ),
        const HomeBookCardItem(
          width: 0.32,
          height: 0.25,
          image:
              'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1705913107i/205649963.jpg',
        )
      ],
    );
  }
}
