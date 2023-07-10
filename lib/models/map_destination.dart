import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'lat_lng_json_converter.dart';

part 'map_destination.freezed.dart';
part 'map_destination.g.dart';

@freezed
class MapDestination with _$MapDestination  {
  const factory MapDestination({
    required String name,
    @LatLngJsonConverter()
    required LatLng location,
  }) = _MapDestination;

  factory MapDestination.fromJson(Map<String, Object?> json)
      => _$MapDestinationFromJson(json);
}