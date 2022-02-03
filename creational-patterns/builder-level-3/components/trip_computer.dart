import '../cars/car.dart';

class TripComputer {
  late Car car;

  void setCar(Car car) {
    this.car = car;
  }

  void showFuelLevel() {
    print("Fuel level: ${car.getFuel()}");
  }

  void showStatus() {
    if (this.car.getEngine().isStarted()) {
      print("Car is started");
    } else {
      print("Car isn't started");
    }
  }
}
