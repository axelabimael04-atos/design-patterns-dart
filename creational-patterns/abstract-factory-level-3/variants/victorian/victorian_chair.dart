import '../../products/chair.dart';

class VictorianChair extends Chair {
  @override
  hasLegs() {
    print('La silla victoriana tiene 4 patas');
  }

  @override
  sitOn() {
    print('Puede sentarse en la silla victoriana');
  }

}