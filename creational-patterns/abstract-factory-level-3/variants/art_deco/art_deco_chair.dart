import '../../products/chair.dart';

class ArtDecoChair extends Chair {
  @override
  hasLegs() {
    print('La silla art deco tiene 4 patas');
  }

  @override
  sitOn() {
    print('Puede sentarse en la silla art deco');
  }

}