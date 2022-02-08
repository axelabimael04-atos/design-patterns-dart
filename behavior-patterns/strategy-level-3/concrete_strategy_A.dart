import 'strategy.dart';

class ConcreteStrategyA extends IStrategy {
  DoAlgorithm(var data) {
    var list = data as List<String>;
    list.sort(((a, b) => a.compareTo(b)));

    return list;
  }
}