part of 'map_destinations_bloc.dart';

@freezed
class MapDestinationsState with _$MapDestinationsState {
  const factory MapDestinationsState.initial() = _Initial;
  const factory MapDestinationsState.loading() = _Loading;
  const factory MapDestinationsState.loaded({
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
