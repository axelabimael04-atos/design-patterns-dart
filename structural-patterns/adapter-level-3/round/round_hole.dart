import 'round_peg.dart';

class RoundHole {
  double radius;

  RoundHole(this.radius);

  double getRadius() {
    return radius;
  }

  bool fits(RoundPeg peg) {
    bool result;
    result = (this.getRadius() >= peg.getRadius());
    return result;
  }
}
