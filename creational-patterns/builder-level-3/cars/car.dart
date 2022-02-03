import 'car_types.dart';
import '../components/engine.dart';
import '../components/gps_navigator.dart';
import '../components/transmission.dart';
import '../components/trip_computer.dart';

class Car {
    final CarType carType;
    final int seats;
    final Engine engine;
    final Transmission transmission;
    final TripComputer tripComputer;
    final GPSNavigator gpsNavigator;
    double fuel = 0;

  Car(this.carType, this.seats, this.engine, this.transmission, this.tripComputer, this.gpsNavigator);

    CarType getCarType() {
        return carType;
    }

    double getFuel() {
        return fuel;
    }

    void setFuel(double fuel) {
        this.fuel = fuel;
    }

    int getSeats() {
        return seats;
    }

    Engine getEngine() {
        return engine;
    }

    Transmission getTransmission() {
        return transmission;
    }

    TripComputer getTripComputer() {
        return tripComputer;
    }

    GPSNavigator getGpsNavigator() {
        return gpsNavigator;
    }
}