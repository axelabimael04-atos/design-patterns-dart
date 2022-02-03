import '../variants/victorian/victorian_chair.dart';
import '../variants/victorian/victorian_coffee_table.dart';
import '../variants/victorian/victorian_sofa.dart';
import 'furniture_factory.dart';
export 'furniture_factory.dart';

class VictorianFurnitureFactory extends FurnitureFactory {
  @override
  Chair createChair() => VictorianChair();

  @override
  CoffeeTable createCoffeeTable() => VictorianCoffeeTable();

  @override
  Sofa createSofa() => VictorianSofa();

}