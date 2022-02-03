import '../user_types/sre.dart';
import 'user_creator.dart';

class SREUserCreator extends UserCreator {
  @override
  User factoryMethod() {
    return new SREUser();
  }
}