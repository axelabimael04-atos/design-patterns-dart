import '../product/product.dart';

abstract class Creator {

  IProduct factoryMethod();
  
  String someOperation() {
    var product = factoryMethod();
    var result =
        "Creator: The same creator's code has just worked with ${product.operation()}";

    return result;
  }
}
