import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'visible_region.freezed.dart';

@freezed
class VisibleRegion with _$VisibleRegion {
  const VisibleRegion._();

  const factory VisibleRegion({
    required LatLng farEast,
    required LatLng nearEast,
    required LatLng nearWest,
    required LatLng farWest,
  }) = _VisibleRegion;

  LatLng get center => LatLng(
        (farEast.latitude + farWest.latitude + nearEast.latitude + nearWest.latitude) / 4,
        (farEast.longitude + farWest.longitude + nearEast.longitude + nearWest.longitude) / 4,
      );
}
