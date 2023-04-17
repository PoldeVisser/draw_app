import 'package:flutter/material.dart';

import 'collapsible_menu_item.dart';

class CollapsibleMenu extends StatefulWidget {
  final List<MenuItem> items;

  const CollapsibleMenu({super.key, required this.items});

  @override
  State<CollapsibleMenu> createState() => _CollapsibleMenuState();
}

class _CollapsibleMenuState extends State<CollapsibleMenu>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Stack(
          children: [
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...widget.items.map((button) {
                      return !isCollapsed
                          ? Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: FadeTransition(
                                opacity: _animation,
                                child: FloatingActionButton(
                                  onPressed: () {
                                    button
                                        .setSelectedOption(); // call the setSelectedOption function
                                    _animationController.reverse();
                                    setState(() {
                                      isCollapsed = true;
                                    });
                                  },
                                  child: Icon(button.icon),
                                ),
                              ),
                            )
                          : Container();
                    }).toList(),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          if (isCollapsed) {
                            _animationController.forward();
                          } else {
                            _animationController.reverse();
                          }
                          setState(() {
                            isCollapsed = !isCollapsed;
                          });
                        },
                        child: Icon(isCollapsed
                            // update the icon to reflect the selected option
                            ? widget.items[selectedOption].icon
                            : Icons.close),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
