import '../../products/sofa.dart';

class ModernSofa extends Sofa {
  @override
  hasLegs() {
    print('El sofa moderno no tiene patas');
  }

  @override
  sitOn() {
    print('Puede sentarse en el sofa moderno');
  }

}