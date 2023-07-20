part of 'map_data_bloc.dart';

@freezed
class MapDataState with _$MapDataState {
  const factory MapDataState.initial() = _Initial;
  const factory MapDataState.loading() = _Loading;
  const factory MapDataState.loaded({
    @Default({}) Map<int, MapDestination> destinations,
    @Default({}) Map<int, MapRoute> routes,
  }) = _Loaded;
}
