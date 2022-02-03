class GPSNavigator {
  late String route;

  GPSNavigator() {
    this.route =
        "221b, Baker Street, London  to Scotland Yard, 8-10 Broadway, London";
  }

  GPSNavigator.manualRoute(String manualRoute) {
    this.route = manualRoute;
  }

  String getRoute() {
    return route;
  }
}
