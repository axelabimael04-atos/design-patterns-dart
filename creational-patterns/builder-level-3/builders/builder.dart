


import '../cars/car_types.dart';
import '../components/engine.dart';
import '../components/gps_navigator.dart';
import '../components/transmission.dart';
import '../components/trip_computer.dart';

export '../cars/car_types.dart';
export '../components/engine.dart';
export '../components/gps_navigator.dart';
export '../components/transmission.dart';
export '../components/trip_computer.dart';

abstract class Builder {
    void setCarType(CarType type);
    void setSeats(int seats);
    void setEngine(Engine engine);
    void setTransmission(Transmission transmission);
    void setTripComputer(TripComputer tripComputer);
    void setGPSNavigator(GPSNavigator gpsNavigator);
}