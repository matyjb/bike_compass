import 'package:bike_compass/data/models/map_destination.dart';
import 'package:bike_compass/data/models/map_route.dart';
import 'package:bike_compass/data/repositories/map_data_repo.dart';
import 'package:bike_compass/helpers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_data_event.dart';
part 'map_data_state.dart';
part 'map_data_bloc.freezed.dart';

class MapDataBloc
    extends Bloc<MapDataEvent, MapDataState> {
  @override
  void onChange(Change<MapDataState> change) {
    super.onChange(change);
    if (change.nextState is _Loaded && change.currentState is _Loaded) {
      // a change in state detected
      final next = change.nextState as _Loaded;
      final current = change.currentState as _Loaded;
      // save only changes in destinations or routes
      if (next.destinations != current.destinations ||
          next.routes != current.routes) {
        add(const _Save());
      }
    }
  }

  MapDataBloc() : super(const _Initial()) {
    on<_Load>((event, emit) async {
      emit(const MapDataState.loading());
      try {
        final destinations = MapDataRepo.getDestinations();
        final routes = MapDataRepo.getRoutes();

        emit(MapDataState.loaded(
          destinations: destinations,
          routes: routes,
        ));
      } catch (e) {
        emit(const MapDataState.loaded());
      }
    });
    on<_Save>((event, emit) async {
      if (state is _Loaded) {
        final s = state as _Loaded;
        MapDataRepo.saveData(s.destinations, s.routes);
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

    on<_RemoveFromRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final prevRoute = prevState.routes[event.routeId]!;
        final prevRouteNewDestinations = List.of(prevRoute.destinations)
          ..removeAt(event.destinationIndex);

        add(_EditRoute(
          event.routeId,
          prevRoute.copyWith(
            destinations: prevRouteNewDestinations,
          ),
        ));
      }
    });
    on<_MoveDestinationInRoute>((event, emit) {
      if (state is _Loaded) {
        final prevState = (state as _Loaded);
        final prevRoute = prevState.routes[event.routeId]!;
        final prevRouteNewDestinations = List.of(prevRoute.destinations)
          ..moveItemWithinList(event.destinationIndex, event.toIndex);

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
