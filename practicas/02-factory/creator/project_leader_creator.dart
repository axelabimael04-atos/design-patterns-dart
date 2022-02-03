import '../user_types/project_leader.dart';
import 'user_creator.dart';

class ProjectLeaderUserCreator extends UserCreator {
  @override
  User factoryMethod() {
    return new ProjectLeaderUser();
  }
}