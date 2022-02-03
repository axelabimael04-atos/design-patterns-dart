import 'user.dart';
export 'user.dart';

class ProjectLeaderUser extends User {
  @override
  getRole() {
    print('ProjectLeader Role');
  }
  
}