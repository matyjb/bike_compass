import 'package:bike_compass/models/destination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_route.freezed.dart';

@freezed
class MapRoute with _$MapRoute  {
  const factory MapRoute({
    required String name,
    required List<MapDestination> route,
  }) = _MapRoute;
}