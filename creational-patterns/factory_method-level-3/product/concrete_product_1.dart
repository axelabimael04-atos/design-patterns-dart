import 'product.dart';
export 'product.dart';

class ConcreteProduct1 extends IProduct {
  @override
  String operation() {
    return "{Result of ConcreteProduct1}";
  }
}
