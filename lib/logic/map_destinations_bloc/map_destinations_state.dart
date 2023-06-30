part of 'map_destinations_bloc.dart';

@freezed
class MapDestinationsState with _$MapDestinationsState {
  const factory MapDestinationsState.initial() = _Initial;
  const factory MapDestinationsState.loading() = _Loading;
  const factory MapDestinationsState.loaded({
    required List<MapDestination> destinations,
    required List<MapRoute> routes,
  }) = _Loaded;
}
