part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.locationChange({LocationData? data}) = _LocationChange;
}