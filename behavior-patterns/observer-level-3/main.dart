

import 'observer/concrete_observer_A.dart';
import 'observer/concrete_observer_B.dart';
import 'subject/subject.dart';
main() async{
  // The client code.
  Subject subject = new Subject();
  ConcreteObserverA observerA = new ConcreteObserverA();
  subject.attach(observerA);

  ConcreteObserverB observerB = new ConcreteObserverB();
  subject.attach(observerB);

  subject.someBusinessLogic();
  subject.someBusinessLogic();

  subject.detach(observerB);

  subject.someBusinessLogic();
}
