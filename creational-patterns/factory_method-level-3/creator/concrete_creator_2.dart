import '../product/concrete_product_2.dart';
import 'creator.dart';

class ConcreteCreator2 extends Creator {
  @override
  IProduct factoryMethod() {
    return new ConcreteProduct2();
  }
}
