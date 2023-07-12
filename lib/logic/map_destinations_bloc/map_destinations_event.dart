part of 'map_destinations_bloc.dart';

@freezed
class MapDestinationsEvent with _$MapDestinationsEvent {
  const factory MapDestinationsEvent.load() = _Load;
  const factory MapDestinationsEvent.save() = _Save;

  /// ###########
  // crud events
  /// ###########
  const factory MapDestinationsEvent.addDestination(
    MapDestination destination,
  ) = _AddDestination;
  const factory MapDestinationsEvent.editDestination(
    int destinationId,
    MapDestination editedDestination,
  ) = _EditDestination;
  const factory MapDestinationsEvent.deleteDestination(
    int destinationId,
  ) = _DeleteDestination;

  const factory MapDestinationsEvent.addRoute(
    MapRoute route,
  ) = _AddRoute;
  const factory MapDestinationsEvent.editRoute(
    int routeId,
    MapRoute editedRoute,
  ) = _EditRoute;
  const factory MapDestinationsEvent.deleteRoute(
    int routeId,
  ) = _DeleteRoute;

  const factory MapDestinationsEvent.selectRoute(
    int? routeId,
  ) = _SelectRoute;

  /// ###########
  // extra events
  /// ###########
  const factory MapDestinationsEvent.addToRoute(
    int destinationId,
    int routeId,
  ) = _AddToRoute;
  const factory MapDestinationsEvent.addDestAndAddToRoute(
    MapDestination newDestination,
    int routeId,
  ) = _AddDestAndAddToRoute;
  const factory MapDestinationsEvent.removeDestinationFromRoute(
    int routeId,
    int destinationId,
  ) = _RemoveFromRoute;
  const factory MapDestinationsEvent.onDestinationAdd(
    MapDestination newDestination,
  ) = _OnDestinationAdd;
}
