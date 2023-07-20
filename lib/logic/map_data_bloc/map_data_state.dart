part of 'map_data_bloc.dart';

@freezed
class MapDataState with _$MapDataState {
  const factory MapDataState.initial() = _Initial;
  const factory MapDataState.loading() = _Loading;
  const factory MapDataState.loaded({
    @Default({}) Map<int, MapDestination> destinations,
    @Default({}) Map<int, MapRoute> routes,
    int? selectedRouteId,
  }) = _Loaded;
}

// ignore: library_private_types_in_public_api
extension MapDestinationsLoadedHelpers on _Loaded {
  Iterable<MapDestination> getDestinations(int routeId) =>
      routes[routeId]!.destinations.map(
            (e) => destinations[e]!,
          );

  MapRoute? get selectedRoute =>
      selectedRouteId == null ? null : routes[selectedRouteId!];
}
