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
        var s = (state as _Loaded).copyWith();
        s.destinations.add(MapDestination(
          name: event.name,
          location: event.location,
        ));

        emit(s);
      }
    });
    on<_DeleteDestination>((event, emit) {
      if (state is _Loaded) {
        var s = (state as _Loaded).copyWith();
        s.destinations.remove(event.destination);
        for (var route in s.routes) {
          route.route.removeWhere((d) => d == event.destination);
        }

        emit(s);
      }
    });

    on<_CreateRoute>((event, emit) {
      if (state is _Loaded) {
        var s = (state as _Loaded).copyWith();
        s.routes.add(MapRoute(name: event.name, route: []));

        emit(s);
      }
    });
    on<_DeleteRoute>((event, emit) {
      if (state is _Loaded) {
        var s = (state as _Loaded).copyWith();
        s.routes.remove(event.route);

        emit(s);
      }
    });

    on<_AddToRoute>((event, emit) {
      if (state is _Loaded) {
        var s = (state as _Loaded).copyWith();
        event.route.route.add(event.destination);
        
        emit(s);
      }
    });
    on<_CreateDestAndAddToRoute>((event, emit) {
      if (state is _Loaded) {
        MapDestination d = MapDestination(name: event.name, location: event.location);
        var s = (state as _Loaded).copyWith();
        event.route.route.add(d);
        s.destinations.add(d);

        emit(s);
      }
    });
  }
}
