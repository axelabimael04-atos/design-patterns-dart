import 'strategy.dart';

class ConcreteStrategyB extends IStrategy {
  DoAlgorithm(var data) {
    var list = data as List<String>;
    list.sort(((a, b) => b.compareTo(a)));

    return list;
  }
}