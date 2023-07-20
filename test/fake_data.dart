import 'dart:io';

import 'package:bike_compass/data/models/map_destination.dart';
import 'package:bike_compass/data/models/map_route.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final fakeStoragePath =
    "${Directory.systemTemp.createTempSync("bike_compass").path}\\test\\storage";
const testRoute = MapRoute(name: "test", destinations: []);
const testRouteEdit = MapRoute(name: "test2", destinations: []);
const testDestination = MapDestination(name: "test", location: LatLng(0, 0));
const testDestinationEdit =
    MapDestination(name: "test2", location: LatLng(0, 0));
