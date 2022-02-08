import 'dart:io';

import '../strategy/strategy.dart';

class Context {
  late IStrategy _strategy;

  void SetStrategy(IStrategy strategy) {
    this._strategy = strategy;
  }

  void DoSomeBusinessLogic() {
    stdout.writeln(
        "Context: Sorting data using the strategy (not sure how it'll do it)");
    var result = this._strategy.DoAlgorithm(<String>["a", "b", "c", "d", "e"]);

    String resultStr = '';
    for (var element in result as List<String>) {
      resultStr += element + ",";
    }

    stdout.writeln(resultStr);
  }
}
