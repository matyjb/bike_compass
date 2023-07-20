import 'dart:convert';

import 'package:bike_compass/data/models/map_destination.dart';
import 'package:bike_compass/data/models/map_route.dart';
import 'package:bike_compass/data/providers/map_data_provider.dart';

class MapDataRepo {
  static getDestinations() {
    final destinationsJson = MapDataProvider.getDestinations() as Map;
    final destinations = destinationsJson.map(
      (k, v) => MapEntry<int, MapDestination>(
        int.parse(k),
        MapDestination.fromJson(v),
      ),
    );
    return destinations;
  }

  static getRoutes() {
    final routesJson = MapDataProvider.getRoutes() as Map;
    final routes = routesJson.map(
      (k, v) => MapEntry<int, MapRoute>(
        int.parse(k),
        MapRoute.fromJson(v),
      ),
    );
    return routes;
  }

  static saveData(
    Map<int, MapDestination> destinations,
    Map<int, MapRoute> routes,
  ) {
    MapDataProvider.saveData(
      jsonEncode(
        destinations.map((key, value) => MapEntry(key.toString(), value)),
      ),
      jsonEncode(
        routes.map((key, value) => MapEntry(key.toString(), value)),
      ),
    );
  }
}
