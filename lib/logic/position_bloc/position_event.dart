part of 'position_bloc.dart';

@freezed
class PositionEvent with _$PositionEvent {
  const factory PositionEvent.update({
    required double latitude,
    required double longitude,
    required double bearing,
  }) = _Update;
  const factory PositionEvent.setUnknown() = _SetUnknown;
}
