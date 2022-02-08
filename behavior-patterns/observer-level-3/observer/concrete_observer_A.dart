import '../subject/subject.dart';
import 'observer.dart';

class ConcreteObserverA extends IObserver {
  void update(ISubject subject) {
    if ((subject as Subject).state < 3) {
      print("ConcreteObserverA: Reacted to the event.");
    }
  }
}