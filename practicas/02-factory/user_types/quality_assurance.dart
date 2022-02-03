import 'user.dart';
export 'user.dart';

class QAUser extends User {
  @override
  getRole() {
    print('QA Role');
  }
  
}