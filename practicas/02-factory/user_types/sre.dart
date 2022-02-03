import 'user.dart';
export 'user.dart';

class SREUser extends User {
  @override
  getRole() {
    print('SRE Role');
  }
  
}