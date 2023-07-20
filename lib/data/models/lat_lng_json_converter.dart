import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LatLngJsonConverter extends JsonConverter<LatLng, Map<String, dynamic>> {
  const LatLngJsonConverter();

  @override
  LatLng fromJson(Map<String, dynamic> json) {
    return LatLng(json["lat"], json["lng"]);
  }

  @override
  Map<String, dynamic> toJson(LatLng object) {
    return {
      "lat": object.latitude,
      "lng": object.longitude,
    };
  }
}
