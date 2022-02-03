import '../user_types/developer.dart';
import 'user_creator.dart';

class DeveloperUserCreator extends UserCreator {
  @override
  User factoryMethod() {
    return new DeveloperUser();
  }
  
}