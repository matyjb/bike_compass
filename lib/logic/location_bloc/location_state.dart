part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.requestingPermission() = _RequestingPermission;
  const factory LocationState.denied({
    required bool hasService,
    PermissionStatus? status,
  }) = _Denied;
  const factory LocationState.hasLocation({
    required LocationData data,
  }) = _HasLocation;
}
