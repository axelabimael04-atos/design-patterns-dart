import 'creator/developer_creator.dart';
import 'creator/functional_analyst_creator.dart';
import 'creator/project_leader_creator.dart';
import 'creator/quality_assurance_creator.dart';
import 'creator/sre_creator.dart';
import 'creator/user_creator.dart';

main() {
  clientCode(new ProjectLeaderUserCreator());

  print("");
  clientCode(new FunctionalAnalystUserCreator());

  print("");
  clientCode(new DeveloperUserCreator());

  print("");
  clientCode(new QAUserCreator());

  print("");
  clientCode(new SREUserCreator());
}

void clientCode(UserCreator creator) {
  print(
      "Client: I'm not aware of the creator's class, but it still works.\n ${creator.someOperation()}");
}
