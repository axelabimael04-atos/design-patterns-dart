import 'command.dart';
import '../receiver/receiver.dart';
export '../receiver/receiver.dart';

class ComplexCommand extends ICommand {
  Receiver _receiver;

  String _a;

  String _b;
  
  ComplexCommand(this._receiver, this._a, this._b);

  // Commands can delegate to any methods of a receiver.
  void Execute() {
    print("ComplexCommand: Complex stuff should be done by a receiver object.\n");
    this._receiver.doSomething(this._a);
    this._receiver.doSomethingElse(this._b);
  }
}
