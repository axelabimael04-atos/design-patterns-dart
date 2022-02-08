import '../subject/subject_interface.dart';

abstract class IObserver {
  // Receive update from subject
  void update(ISubject subject);
}