import 'dart:math';

import 'package:draw_app/widgets/selection%20wheel/selection_wheel_item.dart';
import 'package:flutter/material.dart';

List<Color> colors = [Colors.blue, Colors.amber, Colors.pink, Colors.green];

class SelectionWheelPainter extends CustomPainter {
  final List<SelectionWheelItem> items;
  SelectionWheelPainter({required this.items});

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = size.width / 8;
    final rect = Rect.fromCenter(center: center, width: radius, height: radius);
    double startAngle = 0;
    final double sweepAngle = (2 * pi) / items.length;

    for (var i = 0; i < items.length; i++) {
      final paint = Paint()
        ..style = PaintingStyle.fill
        ..color = colors[i];

      canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
