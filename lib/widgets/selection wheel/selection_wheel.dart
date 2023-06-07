import 'package:draw_app/widgets/selection%20wheel/selection_wheel_item.dart';
import 'package:draw_app/widgets/selection%20wheel/selection_wheel_painter.dart';
import 'package:flutter/material.dart';

class SelectionWheel extends StatefulWidget {
  final List<SelectionWheelItem> items;
  final double? size;
  final Widget? child;
  const SelectionWheel({this.child, this.size = 100, required this.items, super.key});

  @override
  State<SelectionWheel> createState() => _SelectionWheelState();
}

class _SelectionWheelState extends State<SelectionWheel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: CustomPaint(
        painter: SelectionWheelPainter(items: widget.items),
        child: widget.child ?? Container(),
      ),
    );
  }
}
