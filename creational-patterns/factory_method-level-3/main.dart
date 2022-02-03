import 'creator/concrete_creator_1.dart';
import 'creator/concrete_creator_2.dart';
import 'creator/creator.dart';

main() {
  print("App: Launched with the ConcreteCreator1.");
  clientCode(new ConcreteCreator1());

  print("");

  print("App: Launched with the ConcreteCreator2.");
  clientCode(new ConcreteCreator2());
}

void clientCode(Creator creator) {
  print(
      "Client: I'm not aware of the creator's class, but it still works.\n ${creator.someOperation()}");
}
