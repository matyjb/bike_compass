part of 'toolbar_cubit.dart';

@freezed
class ToolbarState with _$ToolbarState {
  const factory ToolbarState.initial() = _Initial;
  const factory ToolbarState.loading() = _Loading;
  const factory ToolbarState.loaded({
    @Default(true) bool followMode,
    @Default(true) bool expandedMap,
  }) = _Loaded;
}
