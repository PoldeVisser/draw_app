import 'package:flutter/material.dart';

class SelectionWheel extends StatefulWidget {
  const SelectionWheel({super.key});

  @override
  State<SelectionWheel> createState() => _SelectionWheelState();
}

class _SelectionWheelState extends State<SelectionWheel> {
  bool _showMenu = false;

  //temp test
  double menuSize = 200;
  Color menuColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onLongPress: () {
        print("long pressed");
        setState(() {
          _showMenu = true;
        });
      },
      child: _showMenu
          ? AnimatedContainer(
              width: menuSize,
              height: menuSize,
              duration: const Duration(milliseconds: 300),
              decoration:
                  BoxDecoration(color: menuColor, shape: BoxShape.circle))
          : Container(),
    );
  }
}
