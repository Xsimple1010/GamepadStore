import 'package:flutter/material.dart';

class GamePadPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint.color = const Color.fromARGB(255, 233, 241, 249);

    path = Path();

    path.lineTo(size.width * 0.09, size.height * 0.13);
    path.cubicTo(size.width * 0.09, size.height * 0.13, size.width * 0.88,
        size.height * 0.01, size.width * 0.88, size.height * 0.01);
    path.cubicTo(size.width * 0.95, 0, size.width, size.height * 0.03,
        size.width, size.height * 0.08);
    path.cubicTo(size.width, size.height * 0.08, size.width, size.height * 0.92,
        size.width, size.height * 0.92);
    path.cubicTo(size.width, size.height * 0.97, size.width * 0.96, size.height,
        size.width * 0.9, size.height);
    path.cubicTo(size.width * 0.9, size.height, size.width * 0.11, size.height,
        size.width * 0.11, size.height);
    path.cubicTo(size.width * 0.05, size.height, 0, size.height * 0.97, 0,
        size.height * 0.92);
    path.cubicTo(0, size.height * 0.92, 0, size.height / 5, 0, size.height / 5);
    path.cubicTo(0, size.height * 0.17, size.width * 0.04, size.height * 0.14,
        size.width * 0.09, size.height * 0.13);
    path.cubicTo(size.width * 0.09, size.height * 0.13, size.width * 0.09,
        size.height * 0.13, size.width * 0.09, size.height * 0.13);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
