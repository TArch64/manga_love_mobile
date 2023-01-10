import 'package:flutter/material.dart';

class DividerPainter extends CustomPainter {
  DividerPainter({
    required this.color,
    required this.strokeWidth
  });

  final Color color;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth;

    canvas.drawLine(
        const Offset(0, 0),
        Offset(size.width, 0), paint
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class LineShape extends CustomPaint {
  LineShape({
    super.key,
    required Color color,
    double strokeWidth = 1,
  }): super(
    painter: DividerPainter(
      color: color,
      strokeWidth: strokeWidth,
    ),
  );
}
