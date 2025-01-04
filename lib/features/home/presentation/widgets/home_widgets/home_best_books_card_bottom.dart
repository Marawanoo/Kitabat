import 'package:flutter/material.dart';
import 'package:kitabat_app/core/utils/app_icons.dart';
import '../../../../../constants.dart';
import '../../../../widgets/custom_elevated_button.dart';

class HomeBestBooksCardBottom extends StatelessWidget {
  const HomeBestBooksCardBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomElevatedButton(
          size: Size(MediaQuery.sizeOf(context).width * 0.42, 45),
          title: 'مشاركة',
          color: kBackgroundColor,
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                'مشاركة',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: kSecondFontColor),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(AppIcons.shareIcon)
            ],
          ),
        ),
        CustomElevatedButton(
          size: Size(MediaQuery.sizeOf(context).width * 0.42, 45),
          title: 'مشاركة',
          color: kBackgroundColor,
          widget: Row(
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
              const Icon(AppIcons.addBookIcon)
            ],
          ),
        )
      ],
    );
  }
}
