import 'dart:math';

class SquarePeg {
  double width;

  SquarePeg(this.width);

  double getWidth() {
    return width;
  }

  double getSquare() {
    double result;
    result = double.parse(pow(this.width, 2).toString());
    return result;
  }
}
