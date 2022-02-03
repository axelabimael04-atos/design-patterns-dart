import '../user_types/quality_assurance.dart';
import 'user_creator.dart';

class QAUserCreator extends UserCreator {
  @override
  User factoryMethod() {
    return new QAUser();
  }
}