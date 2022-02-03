import '../product/concrete_product_1.dart';
import 'creator.dart';

class ConcreteCreator1 extends Creator {
  @override
  IProduct factoryMethod() {
    return new ConcreteProduct1();
  }
}
