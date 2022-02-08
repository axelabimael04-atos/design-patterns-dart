import '../subject/subject.dart';
import 'observer.dart';

class ConcreteObserverB extends IObserver {
  void update(ISubject subject) {
    // ignore: unnecessary_cast
    if ((subject as Subject).state == 0 || (subject as Subject).state >= 2) {
      print("ConcreteObserverB: Reacted to the event.");
    }
  }
}