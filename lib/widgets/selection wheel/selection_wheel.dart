import 'package:draw_app/widgets/selection%20wheel/selection_wheel_items.dart';
import 'package:draw_app/widgets/selection%20wheel/selection_wheel_painter.dart';
import 'package:flutter/material.dart';

class SelectionWheel extends StatefulWidget {
  const SelectionWheel({super.key});

  @override
  State<SelectionWheel> createState() => _SelectionWheelState();
}

class _SelectionWheelState extends State<SelectionWheel> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: SelectionWheelPainter(items: items),
        child: Container(),
      );
  }
}
