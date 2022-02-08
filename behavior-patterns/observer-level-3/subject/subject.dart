import 'dart:io';
import 'dart:math';

import '../observer/observer.dart';
import 'subject_interface.dart';
export 'subject_interface.dart';

class Subject extends ISubject {

  int _state = -0;

  int get state => this._state;
  set state(int value){
    this._state = value;
  }

  List<IObserver> _observers = [];

 
  void attach(IObserver observer) {
    print("Subject: Attached an observer.");
    this._observers.add(observer);
  }

  void detach(IObserver observer) {
    this._observers.remove(observer);
    print("Subject: Detached an observer.");
  }

  
  void notify() {
    print("Subject: Notifying observers...");

    for (var observer in _observers) {
      observer.update(this);
    }
  }
  
  someBusinessLogic()  {
    print("\nSubject: I'm doing something important.");
    this._state = new Random().nextInt(10);

    sleep(const Duration(milliseconds: 15));

    print("Subject: My state has just changed to: ${this._state}");
    this.notify();
  }
}