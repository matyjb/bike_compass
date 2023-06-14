part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.hasLocation({
    required LocationData data,
  }) = _HasLocation;
  const factory LocationState.noLocation() = _NoLocation;
}
