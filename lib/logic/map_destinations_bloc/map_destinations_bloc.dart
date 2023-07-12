import 'dart:convert';

import 'package:bike_compass/helpers.dart';
import 'package:bike_compass/logic/hive_boxes.dart';
import 'package:bike_compass/models/map_destination.dart';
import 'package:bike_compass/models/map_route.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_destinations_event.dart';
part 'map_destinations_state.dart';
part 'map_destinations_bloc.freezed.dart';

class MapDestinationsBloc
    extends Bloc<MapDestinationsEvent, MapDestinationsState> {
  final box = HiveBoxes.i!.boxes[HiveBoxesNames.mapDestinations]!;

  MapDestinationsBloc() : super(const _Initial()) {
    on<_Load>((event, emit) async {
      emit(const MapDestinationsState.loading());
      try {
        final destinationsJson =
            jsonDecode(box.get("destinations", defaultValue: "{}")) as Map;
        final destinations = destinationsJson.map((k, v) =>
            MapEntry<int, MapDestination>(
                int.parse(k), MapDestination.fromJson(v)));

        final routesJson =
            jsonDecode(box.get("routes", defaultValue: "{}")) as Map;
        final routes = routesJson.map((k, v) =>
            MapEntry<int, MapRoute>(int.parse(k), MapRoute.fromJson(v)));

        emit(MapDestinationsState.loaded(
          destinations: destinations,
          routes: routes,
        ));
      } catch (e) {
        emit(const MapDestinationsState.loaded(
          destinations: {},
          routes: {},
        ));
      }
    });
    on<_Save>((event, emit) async {
      if (state is _Loaded) {
        final s = state as _Loaded;
        box.putAll({
          "destinations": jsonEncode(s.destinations
              .map((key, value) => MapEntry(key.toString(), value))),
          "routes": jsonEncode(
              s.routes.map((key, value) => MapEntry(key.toString(), value))),
        });
      }
    });

    on<_AddDestination>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newDestinations = Map.of(prevState.destinations)
          ..putIfAbsent(
              getNewKey(prevState.destinations), () => event.destination);

        emit(prevState.copyWith(
          destinations: newDestinations,
        ));
        add(const _Save());
      }
    });
    on<_EditDestination>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newDestinations = Map.of(prevState.destinations);
        newDestinations[event.destinationId] = event.editedDestination;

        emit(prevState.copyWith(
          destinations: newDestinations,
        ));
        add(const _Save());
      }
    });
    on<_DeleteDestination>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newDestinations = Map.of(prevState.destinations)
          ..remove(event.destinationId);

        // todo: replace with remove destination from route event
        prevState.routes.forEach((key, route) => add(
              MapDestinationsEvent.editRoute(
                key,
                route.copyWith(
                  destinations: List.of(route.destinations)
                    ..remove(event.destinationId),
                ),
              ),
            ));

        emit(prevState.copyWith(
          destinations: newDestinations,
        ));
        add(const _Save());
      }
    });

    on<_AddRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newRoutes = Map.of(prevState.routes)
          ..putIfAbsent(getNewKey(prevState.routes), () => event.route);

        emit(prevState.copyWith(
          routes: newRoutes,
        ));
        add(const _Save());
      }
    });
    on<_EditRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newRoutes = Map.of(prevState.routes);
        newRoutes[event.routeId] = event.editedRoute;

        emit(prevState.copyWith(
          routes: newRoutes,
        ));
        add(const _Save());
      }
    });
    on<_DeleteRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newRoutes = Map.of(prevState.routes)..remove(event.routeId);

        emit(prevState.copyWith(
          routes: newRoutes,
          selectedRouteId: event.routeId == prevState.selectedRouteId
              ? null
              : prevState.selectedRouteId,
        ));
        add(const _Save());
      }
    });
    on<_SelectRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);

        if (event.routeId == null ||
            prevState.routes.keys.contains(event.routeId)) {
          emit(prevState.copyWith(
            selectedRouteId: event.routeId,
          ));
        }
      }
    });

    on<_AddToRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final prevRoute = prevState.routes[event.routeId]!;
        final prevRouteNewDestinations = List.of(prevRoute.destinations)
          ..add(event.destinationId);

        add(_EditRoute(
          event.routeId,
          prevRoute.copyWith(
            destinations: prevRouteNewDestinations,
          ),
        ));
      }
    });
    on<_AddDestAndAddToRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        add(_AddDestination(event.newDestination));
        add(_AddToRoute(getNewKey(prevState.destinations), event.routeId));
      }
    });
    on<_RemoveFromRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final prevRoute = prevState.routes[event.routeId]!;
        final prevRouteNewDestinations = List.of(prevRoute.destinations)
          ..remove(event.destinationId);

        add(_EditRoute(
          event.routeId,
          prevRoute.copyWith(
            destinations: prevRouteNewDestinations,
          ),
        ));
      }
    });
    on<_OnDestinationAdd>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        if (prevState.selectedRouteId != null) {
          add(_AddDestAndAddToRoute(
            event.newDestination,
            prevState.selectedRouteId!,
          ));
        } else {
          add(_AddDestination(event.newDestination));
        }
      }
    });
  }
}
