import '../../products/sofa.dart';

class ArtDecoSofa extends Sofa {
  @override
  hasLegs() {
    print('El sofa Art Deco tiene 4 patas');
  }

  @override
  sitOn() {
    print('Puede sentarse en el sofa Art Deco');
  }

}