import 'package:flutter/material.dart';
import 'package:kitabat_app/constants.dart';
import 'package:kitabat_app/features/widgets/custom_elevated_button.dart';
import 'package:kitabat_app/features/widgets/custom_text_button.dart';

import '../widgets/splash_background_paint.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 175,
              child: Image.asset(
                kSplashImg,
                width: 225,
              ),
            ),
            CustomPaint(
              painter: SplashBackgroundPaint(),
              size: Size.infinite,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 75),
                      child: Image.asset(
                        alignment: Alignment.topCenter,
                        kLogoImg,
                        width: 200,
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    title: 'تسجيل الدخول',
                    color: Colors.white,
                    function: () => Navigator.pushNamed(context, kLoginView),
                  ),
                  CustomTextButton(
                    textStyle: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white),
                    text: 'إنشاء حساب جديد',
                    function: () => Navigator.pushNamed(context, kRegisterView),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
