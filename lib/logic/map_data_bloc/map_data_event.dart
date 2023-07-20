part of 'map_data_bloc.dart';

@freezed
class MapDataEvent with _$MapDataEvent {
  const factory MapDataEvent.load() = _Load;
  const factory MapDataEvent.save() = _Save;

  /// ###########
  // crud events
  /// ###########
  const factory MapDataEvent.addDestination(
    MapDestination destination,
  ) = _AddDestination;
  const factory MapDataEvent.editDestination(
    int destinationId,
    MapDestination editedDestination,
  ) = _EditDestination;
  const factory MapDataEvent.deleteDestination(
    int destinationId,
  ) = _DeleteDestination;

  const factory MapDataEvent.addRoute(
    MapRoute route,
  ) = _AddRoute;
  const factory MapDataEvent.editRoute(
    int routeId,
    MapRoute editedRoute,
  ) = _EditRoute;
  const factory MapDataEvent.deleteRoute(
    int routeId,
  ) = _DeleteRoute;

  const factory MapDataEvent.selectRoute(
    int? routeId,
  ) = _SelectRoute;

  /// ###########
  // extra events
  /// ###########
  const factory MapDataEvent.addToRoute(
    int destinationId,
    int routeId,
  ) = _AddToRoute;
  const factory MapDataEvent.addDestAndAddToRoute(
    MapDestination newDestination,
    int routeId,
  ) = _AddDestAndAddToRoute;
  const factory MapDataEvent.removeDestinationFromRoute(
    int routeId,
    int destinationIndex,
  ) = _RemoveFromRoute;
  const factory MapDataEvent.moveDestinationInRoute(
    int routeId,
    int destinationIndex,
    int toIndex,
  ) = _MoveDestinationInRoute;
  const factory MapDataEvent.onDestinationAdd(
    MapDestination newDestination,
  ) = _OnDestinationAdd;
}
