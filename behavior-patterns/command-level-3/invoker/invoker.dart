import '../commands/command.dart';

class Invoker {
  late ICommand _onStart;

  late ICommand _onFinish;

  void setOnStart(ICommand command) {
    this._onStart = command;
  }

  void setOnFinish(ICommand command) {
    this._onFinish = command;
  }
  
  void doSomethingImportant() {
    print("\nInvoker: Does anybody want something done before I begin?");
    this._onStart.Execute();

    print("Invoker: ...doing something really important...\n");

    print("Invoker: Does anybody want something done after I finish?");
    this._onFinish.Execute();
  }
}
