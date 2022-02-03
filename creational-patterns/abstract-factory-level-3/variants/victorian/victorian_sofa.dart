import '../../products/sofa.dart';

class VictorianSofa extends Sofa {
  @override
  hasLegs() {
    print('El sofa victoriano tiene 4 patas');
  }

  @override
  sitOn() {
    print('Puede sentarse en el sofa victoriano');
  }

}