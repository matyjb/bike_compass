part of 'compass_bloc.dart';

@freezed
class CompassState with _$CompassState {
  const factory CompassState.initial() = _Initial;
  const factory CompassState.requestingPermission() = _RequestingPermission;
  const factory CompassState.denied({
    required PermissionStatus status,
  }) = _Denied;
  const factory CompassState.hasCompass({
    required fc.CompassEvent data,
  }) = _HasCompass;
}
