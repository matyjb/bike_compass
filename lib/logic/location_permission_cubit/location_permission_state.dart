part of 'location_permission_cubit.dart';

@freezed
class LocationPermissionState with _$LocationPermissionState {
  const factory LocationPermissionState.initial() = _Initial;
  const factory LocationPermissionState.granted({
    required PermissionStatus status,
  }) = _Granted;
  const factory LocationPermissionState.denied({
    PermissionStatus? status,
    required bool serviceEnabled,
  }) = _Denied;
}
