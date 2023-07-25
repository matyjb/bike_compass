part of 'position_bloc.dart';

@freezed
class PositionState with _$PositionState {
  const factory PositionState.initial() = _Initial;
  const factory PositionState.state({
    required double latitude,
    required double longitude,
    required double bearing,
  }) = _State;
  const factory PositionState.unknown({
    required double lastLatitude,
    required double lastLongitude,
    required double lastBearing,
  }) = _Unknown;
}
