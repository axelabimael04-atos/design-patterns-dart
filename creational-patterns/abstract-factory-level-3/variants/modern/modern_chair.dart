import '../../products/chair.dart';

class ModernChair extends Chair {
  @override
  hasLegs() {
    print('La silla moderna no tiene patas');
  }

  @override
  sitOn() {
    print('Puede sentarse en la silla moderna');
  }

}