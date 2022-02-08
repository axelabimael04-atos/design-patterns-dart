import 'dart:io';

import 'concrete_strategy_A.dart';
import 'concrete_strategy_B.dart';
import 'context.dart';

main() {
  var context = new Context();

  stdout.writeln("Client: Strategy is set to normal sorting.");
  context.SetStrategy(new ConcreteStrategyA());
  context.DoSomeBusinessLogic();

  stdout.writeln();

  stdout.writeln("Client: Strategy is set to reverse sorting.");
  context.SetStrategy(new ConcreteStrategyB());
  context.DoSomeBusinessLogic();
}
