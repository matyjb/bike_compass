part of 'compass_bloc.dart';

@freezed
class CompassState with _$CompassState {
  const factory CompassState.initial() = _Initial;
  const factory CompassState.hasState({
    required fc.CompassEvent data,
  }) = _HasCompass;
  const factory CompassState.noState() = _NoState;
}
