import '../observer/observer.dart';

abstract class ISubject {
  // Attach an observer to the subject.
  void attach(IObserver observer);

  // Detach an observer from the subject.
  void detach(IObserver observer);

  // Notify all observers about an event.
  void notify();
}