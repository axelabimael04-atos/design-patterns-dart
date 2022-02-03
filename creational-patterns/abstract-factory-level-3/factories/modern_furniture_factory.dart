import '../variants/modern/modern_chair.dart';
import '../variants/modern/modern_coffee_table.dart';
import '../variants/modern/modern_sofa.dart';
import 'furniture_factory.dart';
export 'furniture_factory.dart';

class ModernFurnitureFactory extends FurnitureFactory {
  @override
  Chair createChair() => ModernChair();

  @override
  CoffeeTable createCoffeeTable() => ModernCoffeeTable();

  @override
  Sofa createSofa() => ModernSofa();

}