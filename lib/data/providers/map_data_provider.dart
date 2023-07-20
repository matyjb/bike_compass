import 'dart:convert';
import 'package:bike_compass/data/providers/hive.dart';

class MapDataProvider {
  static getDestinations() {
    final box = HiveBoxProvider.mapDataBox;
    if (box != null) {
      return jsonDecode(box.get("destinations", defaultValue: "{}"));
    } else {
      return {};
    }
  }

  static getRoutes() {
    final box = HiveBoxProvider.mapDataBox;
    if (box != null) {
      return jsonDecode(box.get("routes", defaultValue: "{}"));
    } else {
      return {};
    }
  }

  static saveData(String destinations, String routes) {
    final box = HiveBoxProvider.mapDataBox;
    if (box != null) {
      box.putAll({
        "destinations": destinations,
        "routes": routes,
      });
    }
  }
}
