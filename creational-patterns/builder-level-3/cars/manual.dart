 import 'car_types.dart';
import '../components/engine.dart';
import '../components/gps_navigator.dart';
import '../components/transmission.dart';
import '../components/trip_computer.dart';

class Manual {
    final CarType carType;
    final int seats;
    final Engine engine;
    final Transmission transmission;
    final TripComputer? tripComputer;
    final GPSNavigator? gpsNavigator;

  Manual(this.carType, this.seats, this.engine, this.transmission, this.tripComputer, this.gpsNavigator);

     String print() {
        String info = "";
        info += "Type of car: $carType \n";
        info += "Count of seats: $seats \n";
        info += "Engine: volume - ${engine.getVolume()}; mileage - ${engine.getMileage()}\n";
        info += "Transmission: $transmission\n";

        if (this.tripComputer != null) {
            info += "Trip Computer: Functional" + "\n";
        } else {
            info += "Trip Computer: N/A" + "\n";
        }
        if (this.gpsNavigator != null) {
            info += "GPS Navigator: Functional" + "\n";
        } else {
            info += "GPS Navigator: N/A" + "\n";
        }
        return info;
    }
}