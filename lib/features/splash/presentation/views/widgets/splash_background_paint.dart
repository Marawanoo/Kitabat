import 'package:flutter/material.dart';

class SplashBackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = const Color(0xff232a36);
    paint.style = PaintingStyle.fill;
    paint.maskFilter;
    Path path = Path();

    canvas.drawCircle(
        Offset(-size.width * 0.4, size.height * 0.71), 250, paint);
    canvas.drawCircle(Offset(size.width * 0.8, size.height + 100), 300, paint);
    canvas.drawPath(path, paint);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
