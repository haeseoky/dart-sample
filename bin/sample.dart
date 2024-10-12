import 'package:sample/sample.dart' as sample;

enum Color { red, green, blue }

abstract class Shape {
  void draw();
}

// mixin class
mixin ShapeColor {
  Color color = Color.red;
}

class Circle extends Shape with ShapeColor {
  final double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Drawing a circle with radius $radius and color $color');
  }
}

void main(List<String> arguments) {

  // Create a circle
  final circle = Circle(5.0);
  circle.draw();

  // Create a list of colors
  final colors = [Color.red, Color.green, Color.blue];
  for (final color in colors) {
    print(color);
  }

}
