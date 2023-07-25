part of 'compass_bloc.dart';

@freezed
class CompassEvent with _$CompassEvent {
  const factory CompassEvent.update({fc.CompassEvent? event}) = _Update;
}