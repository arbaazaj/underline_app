import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {

  final Color lineColor;
  final double strokeWidth;
  final double heightCurve;

  const MyCustomPainter({required this.lineColor, required this.strokeWidth, required this.heightCurve});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = lineColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = strokeWidth;
    paint.strokeCap = StrokeCap.round;
    paint.isAntiAlias = true;
    Path path = Path();
    path.moveTo(10, size.height);
    path.quadraticBezierTo(size.width * 0.5, size.height + heightCurve, size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}