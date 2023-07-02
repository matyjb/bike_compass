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
  MapDestinationsBloc() : super(const _Initial()) {
    on<_Load>((event, emit) {
      emit(const MapDestinationsState.loading());
      emit(const MapDestinationsState.loaded(destinations: [], routes: []));
    });

    on<_CreateDestination>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newDestinations = List.of(prevState.destinations)
          ..add(MapDestination(
            name: event.name,
            location: event.location,
          ));

        emit(prevState.copyWith(
          destinations: newDestinations,
        ));
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
      }
    });
    on<_DeleteRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final newRoutes = List.of(prevState.routes)..remove(event.route);

        emit(prevState.copyWith(
          routes: newRoutes,
        ));
      }
    });

    on<_AddToRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);

        event.route.route.add(event.destination);
        final newRoutes = List.of(prevState.routes);

        emit(prevState.copyWith(
          routes: newRoutes,
        ));
      }
    });
    on<_CreateDestAndAddToRoute>((event, emit) {
      if (state is _Loaded) {
        MapDestination d =
            MapDestination(name: event.name, location: event.location);
        final prevState = (state as _Loaded);

        event.route.route.add(d);
        final newRoutes = List.of(prevState.routes);
        final newDestinations = List.of(prevState.destinations)..add(d);

        emit(prevState.copyWith(
          routes: newRoutes,
          destinations: newDestinations,
        ));
      }
    });
  }
}
