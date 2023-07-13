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

  @override
  void onChange(Change<MapDestinationsState> change) {
    super.onChange(change);

    if (change.nextState is _Loaded) {
      add(const _Save());
    }
  }

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
      }
    });
    on<_DeleteDestination>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newDestinations = Map.of(prevState.destinations)
          ..remove(event.destinationId);

        final newRoutes = Map.of(prevState.routes).map(
          (key, value) => MapEntry(
            key,
            value.copyWith(
              destinations: value.destinations
                  .where((destId) => destId != event.destinationId)
                  .toList(),
            ),
          ),
        );

        emit(prevState.copyWith(
          destinations: newDestinations,
          routes: newRoutes,
        ));
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
        int destKey = getNewKey(prevState.destinations);
        final newDestinations = Map.of(prevState.destinations)
          ..putIfAbsent(destKey, () => event.newDestination);
        final newRoutes = Map.of(prevState.routes);

        newRoutes[event.routeId] = newRoutes[event.routeId]!.copyWith(
            destinations: [...newRoutes[event.routeId]!.destinations, destKey]);

        emit(prevState.copyWith(
          destinations: newDestinations,
          routes: newRoutes,
        ));
      }
    });

    // todo: replace it to remove destination at index
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
