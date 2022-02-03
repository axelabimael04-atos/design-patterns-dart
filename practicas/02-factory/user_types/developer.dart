import 'user.dart';
export 'user.dart';

class DeveloperUser extends User {
  @override
  getRole() {
    print('Developer Role');
  }
  
}