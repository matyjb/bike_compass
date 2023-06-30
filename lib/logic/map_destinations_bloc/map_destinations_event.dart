part of 'map_destinations_bloc.dart';

@freezed
class MapDestinationsEvent with _$MapDestinationsEvent {
  const factory MapDestinationsEvent.load() = _Load;

  const factory MapDestinationsEvent.createDestination(String name, LatLng location) = _CreateDestination;
  const factory MapDestinationsEvent.deleteDestination(MapDestination destination) = _DeleteDestination;

  const factory MapDestinationsEvent.createRoute(String name) = _CreateRoute;
  const factory MapDestinationsEvent.deleteRoute(MapRoute route) = _DeleteRoute;
  
  const factory MapDestinationsEvent.addToRoute(MapDestination destination, MapRoute route) = _AddToRoute;
  const factory MapDestinationsEvent.createDestAndAddToRoute(String name, LatLng location, MapRoute route) = _CreateDestAndAddToRoute;
}