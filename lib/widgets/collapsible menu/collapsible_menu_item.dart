import 'package:flutter/material.dart';

class MenuItem {
  final IconData icon;
  final VoidCallback onPressed;
  final Function setSelectedOption; // added this property

  MenuItem(
      {required this.icon,
      required this.onPressed,
      required this.setSelectedOption});

  // ...
}

int selectedOption = 0;

List<MenuItem> menuItems = [
  MenuItem(
    icon: Icons.edit,
    onPressed: () {},
    setSelectedOption: () {
      selectedOption = 0;
    },
  ),
  MenuItem(
    icon: Icons.brush,
    onPressed: () {},
    setSelectedOption: () {
      selectedOption = 1;
    },
  ),
];
