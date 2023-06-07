import 'package:flutter/material.dart';

abstract class DrawableInterface {
  late double size;
  late Color color;

  void draw();
}

abstract class Drawable implements DrawableInterface {
  @override
  Color color = Colors.black;

  @override
  double size = 1;

  Drawable(this.size, this.color);

  @override
  void draw() {
    print("drawing");
  }
}

class Brush extends Drawable {
  double feather;
  Brush({this.feather = 10}) : super(10, Colors.black);

  @override
  void draw() {
    print("drawing with brush");
  }
}

class Pencil extends Drawable {
  double hardness;
  Pencil({this.hardness = 10}) : super(10, Colors.black);

  @override
  void draw() {
    print("drawing with pencil");
  }
}
