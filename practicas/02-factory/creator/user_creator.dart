
import '../user_types/user.dart';

abstract class UserCreator {

   User factoryMethod();
  
  String someOperation() {
    var product = factoryMethod();
    var result =
        "Usuario: Permisos ${product.getRole()}";

    return result;
  }
}
