import 'dart:io';
import 'factories/art_deco_furniture_factory.dart';
import 'factories/modern_furniture_factory.dart';
import 'factories/victorian_furniture_factory.dart';


/**
 * Utiliza el patrón Abstract Factory cuando tu código deba funcionar con varias familias de productos relacionados, 
 * pero no desees que dependa de las clases concretas de esos productos, 
 * ya que puede ser que no los conozcas de antemano o sencillamente quieras permitir una futura extensibilidad.
 */

main(){

  FurnitureFactory? furniture;

    stdout.writeln('Seleccione una clase de muebles (numero)');
    stdout.writeln('1 - Moderno');
    stdout.writeln('2 - Art Deco');
    stdout.writeln('3 - Victoriano');
    String selection = stdin.readLineSync()!;

    switch (int.parse(selection)) {
      case 1:
        furniture = ModernFurnitureFactory();
        break;
      case 2:
        furniture = ArtDecoFurnitureFactory();
        break;
      case 3:
        furniture = VictorianFurnitureFactory();
        break;
      default:
      stdout.writeln('Clase de muebles desconocida');
    }

  Chair chair = furniture!.createChair();
  CoffeeTable coffeeTable = furniture.createCoffeeTable();
  Sofa sofa = furniture.createSofa();

  chair.hasLegs();
  coffeeTable.hasLegs();
  sofa.hasLegs();
  
}