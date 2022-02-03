import '../user_types/functional_analyst.dart';
import 'user_creator.dart';

class FunctionalAnalystUserCreator extends UserCreator {
  @override
  User factoryMethod() {
    return new FunctionalAnalystUser();
  }
}