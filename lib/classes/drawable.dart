abstract class DrawInterface {
  void draw();
}

class Drawable implements DrawInterface {
  @override
  draw() {
    // TODO: implement draw
    throw UnimplementedError();
  }
}

class CircularDrawable extends Drawable {
  final int radius;
  final double hardness;

  CircularDrawable({required this.radius, required this.hardness});
}