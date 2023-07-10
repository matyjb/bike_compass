import 'dart:convert';

import 'package:bike_compass/logic/hive_boxes.dart';
import 'package:bike_compass/models/destination.dart';
import 'package:bike_compass/models/map_route.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_destinations_event.dart';
part 'map_destinations_state.dart';
part 'map_destinations_bloc.freezed.dart';

class MapDestinationsBloc
    extends Bloc<MapDestinationsEvent, MapDestinationsState> {
  final box = HiveBoxes.i!.boxes[HiveBoxesNames.mapDestinations]!;

  MapDestinationsBloc() : super(const _Initial()) {
    on<_Load>((event, emit) async {
      emit(const MapDestinationsState.loading());

      final destinationsJson =
          jsonDecode(box.get("destinations", defaultValue: "[]")) as List;
      final destinations =
          destinationsJson.map((e) => MapDestination.fromJson(e)).toList();

      final routesJson =
          jsonDecode(box.get("routes", defaultValue: "[]")) as List;
      final routes = routesJson
          .map(
            (element) => MapRoute(
              name: element["name"] as String,
              route: (element["route"] as List)
                  .map((e) => destinations[e])
                  .toList(),
            ),
          )
          .toList();

      emit(MapDestinationsState.loaded(
        destinations: destinations,
        routes: routes,
      ));
    });

    on<_Save>((event, emit) async {
      if (state is _Loaded) {
        final s = state as _Loaded;
        box.putAll({
          "destinations": jsonEncode(s.destinations),
          "routes": jsonEncode(s.routes.map((e) {
            return {
              "name": e.name,
              "route": e.route.map(s.destinations.indexOf).toList()
            };
          }).toList()),
        });
      }
    });

    on<_CreateDestination>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        if (prevState.selectedRoute == null) {
          final newDestinations = List.of(prevState.destinations)
            ..add(MapDestination(
              name: event.name,
              location: event.location,
            ));

          emit(prevState.copyWith(
            destinations: newDestinations,
          ));
          add(const _Save());
        } else {
          add(MapDestinationsEvent.createDestAndAddToRoute(
            event.name,
            event.location,
            prevState.selectedRoute!,
          ));
        }
      }
    });
    on<_DeleteDestination>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newDestinations = List.of(prevState.destinations)
          ..remove(event.destination);

        final newRoutes = List.of(prevState.routes)
          ..forEach((route) =>
              route.route.removeWhere((d) => d == event.destination));

        emit(prevState.copyWith(
          destinations: newDestinations,
          routes: newRoutes,
        ));
        add(const _Save());
      }
    });

    on<_CreateRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newRoutes = List.of(prevState.routes)
          ..add(MapRoute(name: event.name, route: []));

        emit(prevState.copyWith(
          routes: newRoutes,
        ));
        add(const _Save());
      }
    });
    on<_DeleteRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newRoutes = List.of(prevState.routes)..remove(event.route);

        emit(prevState.copyWith(
          routes: newRoutes,
        ));
        add(const _Save());
      }
    });
    on<_SelectRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);

        emit(prevState.copyWith(
          selectedRoute: event.route,
        ));
      }
    });

    on<_AddToRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);

        final updatedRoute = event.route.copyWith(route: List.of(event.route.route)..add(event.destination));
        // TODO: Fix order of routes after remove and add (should create replace function)
        final newRoutes = List.of(prevState.routes)..remove(event.route)..add(updatedRoute);

        emit(prevState.copyWith(
          routes: newRoutes,
        ));
        add(const _Save());
      }
    });
    on<_CreateDestAndAddToRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        MapDestination d =
            MapDestination(name: event.name, location: event.location);

        final updatedRoute = event.route.copyWith(route: List.of(event.route.route)..add(d));
        // TODO: Fix order of routes after remove and add (should create replace function)
        final newRoutes = List.of(prevState.routes)..remove(event.route)..add(updatedRoute);
        final newDestinations = List.of(prevState.destinations)..add(d);

        emit(prevState.copyWith(
          routes: newRoutes,
          destinations: newDestinations,
          selectedRoute: prevState.selectedRoute == event.route ? updatedRoute : prevState.selectedRoute
        ));
        add(const _Save());
      }
    });
  }
}
