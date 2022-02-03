import '../products/chair.dart';
import '../products/coffee_table.dart';
import '../products/sofa.dart';

export '../products/chair.dart';
export '../products/coffee_table.dart';
export '../products/sofa.dart';

abstract class FurnitureFactory {
  
  Chair createChair();

  CoffeeTable createCoffeeTable();

  Sofa createSofa();
}