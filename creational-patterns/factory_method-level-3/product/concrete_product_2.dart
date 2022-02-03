import 'product.dart';
export 'product.dart';

class ConcreteProduct2 extends IProduct {
  @override
  String operation() {
    return "{Result of ConcreteProduct1}";
  }
}
