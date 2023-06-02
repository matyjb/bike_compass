part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  // initializes location service
  // checks if service is available, asks user for permissions, 
  // starts listening for locations changes
  const factory LocationEvent.start() = _Start;
  const factory LocationEvent.newLocation({required LocationData data}) = _NewLocation;
}