
    import 'dart:math';

abstract class IObserver
    {
        // Receive update from subject
        void update(ISubject subject);
    }

    abstract class ISubject
    {
        // Attach an observer to the subject.
        void attach(IObserver observer);

        // Detach an observer from the subject.
        void detach(IObserver observer);

        // Notify all observers about an event.
        void notify();
    }

    // The Subject owns some important state and notifies observers when the
    // state changes.
    class Subject extends ISubject
    {
        // For the sake of simplicity, the Subject's state, essential to all
        // subscribers, is stored in this variable.
        int state { get; set; } = -0;

        // List of subscribers. In real life, the list of subscribers can be
        // stored more comprehensively (categorized by event type, etc.).
         List<IObserver> _observers = [];

        // The subscription management methods.
        void attach(IObserver observer)
        {
            print("Subject: Attached an observer.");
            this._observers.add(observer);
        }

        void detach(IObserver observer)
        {
            this._observers.remove(observer);
            print("Subject: Detached an observer.");
        }

        // Trigger an update in each subscriber.
        void notify()
        {
            print("Subject: Notifying observers...");

            foreach (var observer in _observers)
            {
                observer.Update(this);
            }
        }

        // Usually, the subscription logic is only a fraction of what a Subject
        // can really do. Subjects commonly hold some important business logic,
        // that triggers a notification method whenever something important is
        // about to happen (or after it).
        void someBusinessLogic()
        {
            print("\nSubject: I'm doing something important.");
            this.state = new Random().nextInt(10);

            Thread.Sleep(15);

            print("Subject: My state has just changed to: ${this.state}");
            this.notify();
        }
    }

    // Concrete Observers react to the updates issued by the Subject they had
    // been attached to.
    class ConcreteObserverA extends IObserver
    {
        void update(ISubject subject)
        {            
            if ((subject as Subject).state < 3)
            {
                print("ConcreteObserverA: Reacted to the event.");
            }
        }
    }

    class ConcreteObserverB extends IObserver
    {
        void update(ISubject subject)
        {
            if ((subject as Subject).state == 0 || (subject as Subject).state >= 2)
            {
                print("ConcreteObserverB: Reacted to the event.");
            }
        }
    }
    
 main()
        {
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