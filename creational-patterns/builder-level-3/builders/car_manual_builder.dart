import '../cars/manual.dart';
import 'builder.dart';

class CarManualBuilder implements Builder {
  late CarType type;
  late int seats;
  late Engine engine;
  late Transmission transmission;
  late TripComputer tripComputer;
  late GPSNavigator gpsNavigator;

  @override
  void setCarType(CarType type) {
    this.type = type;
  }

  @override
  void setSeats(int seats) {
    this.seats = seats;
  }

  @override
  void setEngine(Engine engine) {
    this.engine = engine;
  }

  @override
  void setTransmission(Transmission transmission) {
    this.transmission = transmission;
  }

  @override
  void setTripComputer(TripComputer tripComputer) {
    this.tripComputer = tripComputer;
  }

  @override
  void setGPSNavigator(GPSNavigator gpsNavigator) {
    this.gpsNavigator = gpsNavigator;
  }

  Manual getResult() {
    return new Manual(
        type, seats, engine, transmission, tripComputer, gpsNavigator);
  }
}
