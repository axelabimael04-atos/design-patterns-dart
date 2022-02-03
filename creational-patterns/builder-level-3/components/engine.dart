class Engine {
    final double volume;
    double mileage;

    late bool started;
    

    Engine(this.volume, this.mileage);

    void on() {
        started = true;
    }

    void off() {
        started = false;
    }

    bool isStarted() {
        return started;
    }

    void go(double mileage) {
        if (started) {
            this.mileage += mileage;
        } else {
            print("Cannot go(), you must start engine first!");
        }
    }

    double getVolume() {
        return volume;
    }

    double getMileage() {
        return mileage;
    }
}