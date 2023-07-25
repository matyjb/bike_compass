part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.locationChange({required LocationData data}) = _LocationChange;
  const factory LocationEvent.noLocation() = _NoLocation;
}