import 'package:flutter/material.dart';
import 'package:underline_app/widgets/line_curve_painter.dart';

class CurvyLineText extends StatelessWidget {
  final String baseText;
  final double fontSize;
  final String underlineText;
  final Color lineColor;
  final double strokeWidth;
  final double heightCurve;

  const CurvyLineText(
      {super.key,
      required this.baseText,
      required this.underlineText,
      required this.fontSize,
      required this.lineColor,
      required this.strokeWidth,
      required this.heightCurve});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      runAlignment: WrapAlignment.start,
      alignment: WrapAlignment.start,
      spacing: 1.0,
      runSpacing: 1.0,
      children: [
        Text(
          baseText,
          softWrap: true,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        CustomPaint(
          painter: MyCustomPainter(
            lineColor: lineColor,
            strokeWidth: strokeWidth,
            heightCurve: heightCurve,
          ),
          child: Text(
            ' $underlineText',
            softWrap: true,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
