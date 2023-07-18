part of 'map_destinations_bloc.dart';

@freezed
class MapDestinationsState with _$MapDestinationsState {
  const factory MapDestinationsState.initial() = _Initial;
  const factory MapDestinationsState.loading() = _Loading;
  const factory MapDestinationsState.loaded({
    @Default({}) Map<int, MapDestination> destinations,
    @Default({}) Map<int, MapRoute> routes,
  }) = _Loaded;
}
