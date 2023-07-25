import 'package:bloc/bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stream_transform/stream_transform.dart';
import 'dart:math' show pi, sin, cos, atan2, sqrt;

int getNewKey<T>(Map<int, T> m) {
  if (m.isNotEmpty) {
    return m.keys.last + 1;
  } else {
    return 0;
  }
}

extension ListExtensions on List {
  void moveItemWithinList<T>(int oldIndex, int newIndex) {
    if (isEmpty ||
        oldIndex < 0 ||
        oldIndex >= length ||
        newIndex < 0 ||
        newIndex >= length ||
        oldIndex == newIndex) {
      return;
    }
    T item = removeAt(oldIndex);
    insert(newIndex, item);
  }
}

double degreesToRadians(double degrees) {
  return degrees * pi / 180;
}

const earthRadiusM = 6371000;

extension LatLngExtension on LatLng {
  /// Calculates distance to [other] and returns in meters.
  double distanceTo(LatLng other) {
    double lat1 = latitude;
    double lat2 = other.latitude;

    final double dLat = degreesToRadians(lat2 - lat1);
    final double dLon = degreesToRadians(other.longitude - longitude);

    lat1 = degreesToRadians(lat1);
    lat2 = degreesToRadians(lat2);

    double a = sin(dLat / 2) * sin(dLat / 2) +
        sin(dLon / 2) * sin(dLon / 2) * cos(lat1) * cos(lat2);
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));
    return earthRadiusM * c;
  }
}

EventTransformer<E> debounce<E>(Duration duration) {
  return (events, mapper) {
    return events.debounce(duration).switchMap(mapper);
  };
}
