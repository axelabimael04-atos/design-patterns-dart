import 'builders/car_builder.dart';
import 'builders/car_manual_builder.dart';
import 'cars/car.dart';
import 'cars/manual.dart';
import 'director.dart/director.dart';

/**
 * Utiliza el patrón Builder cuando quieras que el código sea capaz de crear 
 * distintas representaciones de ciertos productos (por ejemplo, casas de piedra y madera).
 * 
 * Utiliza el patrón Builder para construir árboles con el patrón Composite u otros objetos complejos.
 */

main() {
  Director director = new Director();

  // Director gets the concrete builder object from the client
  // (application code). That's because application knows better which
  // builder to use to get a specific product.
  CarBuilder builder = new CarBuilder();
  director.constructSportsCar(builder);

  // The final product is often retrieved from a builder object, since
  // Director is not aware and not dependent on concrete builders and
  // products.
  Car car = builder.getResult();
  print("Car built:\n ${car.getCarType()}");

  CarManualBuilder manualBuilder = new CarManualBuilder();

  // Director may know several building recipes.
  director.constructSportsCar(manualBuilder);
  Manual carManual = manualBuilder.getResult();
  print("\nCar manual built:\n" + carManual.print());
}
