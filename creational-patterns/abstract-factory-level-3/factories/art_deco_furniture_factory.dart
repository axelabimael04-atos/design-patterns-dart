import '../variants/art_deco/art_deco_chair.dart';
import '../variants/art_deco/art_deco_coffee_table.dart';
import '../variants/art_deco/art_deco_sofa.dart';
import 'furniture_factory.dart';
export 'furniture_factory.dart';

class ArtDecoFurnitureFactory extends FurnitureFactory {
  @override
  Chair createChair() => ArtDecoChair();

  @override
  CoffeeTable createCoffeeTable() => ArtDecoCoffeeTable();

  @override
  Sofa createSofa() => ArtDecoSofa();

}