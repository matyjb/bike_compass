part of 'app_map_cubit.dart';

@freezed
class AppMapState with _$AppMapState {
  const factory AppMapState({
    @Default(true) bool followMode,
    @Default(true) bool expandedMap,
    int? selectedRouteIndex,
  }) = _AppMapState;
}
