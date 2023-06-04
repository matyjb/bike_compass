part of 'compass_bloc.dart';

@freezed
class CompassEvent with _$CompassEvent {
  // initializes compass service
  // checks if service is available, asks user for permissions, 
  // starts listening for compasss changes
  const factory CompassEvent.start() = _Start;
  const factory CompassEvent.update({required fc.CompassEvent event}) = _Update;
}