import 'commands/complex_command.dart';
import 'invoker/invoker.dart';
import 'commands/simple_command.dart';

main() {
  Invoker invoker = new Invoker();
  invoker.setOnStart(new SimpleCommand("Say Hi!"));
  Receiver receiver = new Receiver();
  invoker.setOnFinish(new ComplexCommand(receiver, "Send email", "Save report"));

  invoker.doSomethingImportant();
}
