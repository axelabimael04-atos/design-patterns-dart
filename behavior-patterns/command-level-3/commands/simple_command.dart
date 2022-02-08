import 'command.dart';

class SimpleCommand extends ICommand {
  String _payload = '';

  SimpleCommand(String payload) {
    this._payload = payload;
  }

  @override
  void Execute() {
    print(
        "SimpleCommand: Simple proceso como imprimir => ${this._payload}\n");
  }
}
