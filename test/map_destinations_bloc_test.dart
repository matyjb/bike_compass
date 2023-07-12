import 'dart:io';

import 'package:bike_compass/models/map_destination.dart';
import 'package:bike_compass/models/map_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:bike_compass/logic/map_destinations_bloc/map_destinations_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'hive_helpers.dart';

final fakeStoragePath =
    "${Directory.systemTemp.createTempSync("bike_compass").path}\\test\\storage";
const testRoute = MapRoute(name: "test", destinations: []);
const testRouteEdit = MapRoute(name: "test2", destinations: []);
const testDestination = MapDestination(name: "test", location: LatLng(0, 0));
const testDestinationEdit =
    MapDestination(name: "test2", location: LatLng(0, 0));

void main() {
  group('MapDestinationsBloc initial tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\init"));
    tearDown(() async => await cleanUpHive());
    blocTest<MapDestinationsBloc, MapDestinationsState>(
      'initial state should be .initial()',
      build: () => MapDestinationsBloc(),
      verify: (bloc) => bloc.state == const MapDestinationsState.initial(),
    );
    blocTest<MapDestinationsBloc, MapDestinationsState>(
      'emits [Loading, Loaded] when load event is added.',
      build: () => MapDestinationsBloc(),
      act: (bloc) => bloc.add(const MapDestinationsEvent.load()),
      expect: () => const <MapDestinationsState>[
        MapDestinationsState.loading(),
        MapDestinationsState.loaded(),
      ],
    );
  });

  group('MapDestinationsBloc destinations crud tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\dest_crud"));
    tearDown(() async => await cleanUpHive());

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_AddDestination event: emits _Loaded state with added destination.',
      build: () =>
          MapDestinationsBloc()..emit(const MapDestinationsState.loaded()),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.addDestination(testDestination));
      },
      expect: () => [
        const MapDestinationsState.loaded(
          destinations: {0: testDestination},
        ),
      ],
    );

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_EditDestination event: emits _Loaded state with edited destination.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          destinations: {0: testDestination},
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.editDestination(
          0,
          testDestinationEdit,
        ));
      },
      expect: () => [
        const MapDestinationsState.loaded(
          destinations: {0: testDestinationEdit},
        ),
      ],
    );

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_DeleteDestination event: emits _Loaded state with deleted destination.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          destinations: {0: testDestination},
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.deleteDestination(0));
      },
      expect: () => [
        const MapDestinationsState.loaded(),
      ],
    );

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_DeleteDestination event: deleting destination should remove this destination from all routes.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          destinations: {
            0: testDestination,
            1: testDestinationEdit,
          },
          routes: {
            0: MapRoute(name: "test", destinations: [0]),
            1: MapRoute(name: "test2", destinations: [0, 1, 0]),
          },
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.deleteDestination(0));
      },
      expect: () => [
        const MapDestinationsState.loaded(
          destinations: {
            1: testDestinationEdit,
          },
          routes: {
            0: MapRoute(name: "test", destinations: []),
            1: MapRoute(name: "test2", destinations: [1]),
          },
        ),
      ],
    );
  });

  group('MapDestinationsBloc route crud tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\route_crud"));
    tearDown(() async => await cleanUpHive());

    const testRoute = MapRoute(name: "test", destinations: []);
    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_AddRoute event: emits _Loaded state with added route.',
      build: () =>
          MapDestinationsBloc()..emit(const MapDestinationsState.loaded()),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.addRoute(testRoute));
      },
      expect: () => [
        const MapDestinationsState.loaded(
          routes: {0: testRoute},
        ),
      ],
    );

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_EditRoute event: emits _Loaded state with edited route.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.editRoute(0, testRouteEdit));
      },
      expect: () => [
        const MapDestinationsState.loaded(
          routes: {0: testRouteEdit},
        ),
      ],
    );

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_DeleteRoute event: emits _Loaded state with deleted route.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.deleteRoute(0));
      },
      expect: () => [
        const MapDestinationsState.loaded(),
      ],
    );
  });

  group('MapDestination route selection tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\route_selection"));
    tearDown(() async => await cleanUpHive());

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_SelectRoute event: emits _Loaded state with selected route id if it exists.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          routes: {0: testRoute},
          selectedRouteId: null,
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.selectRoute(0));
      },
      expect: () => [
        const MapDestinationsState.loaded(
          routes: {0: testRoute},
          selectedRouteId: 0,
        ),
      ],
    );

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_SelectRoute event: does nothing if selectedRoute id doesn\'t exist.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.selectRoute(9999));
      },
      expect: () => [],
      verify: (bloc) =>
          bloc.state ==
          const MapDestinationsState.loaded(
            routes: {0: testRoute},
            selectedRouteId: null,
          ),
    );

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_SelectRoute event: emits _Loaded state with selectedRouteId set to null if user deselects route.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          routes: {0: testRoute},
          selectedRouteId: 0,
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.selectRoute(null));
      },
      expect: () => [
        const MapDestinationsState.loaded(
          routes: {0: testRoute},
          selectedRouteId: null,
        ),
      ],
    );
  });

  group('MapDestinationBloc extra events tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\extra_events"));
    tearDown(() async => await cleanUpHive());

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_AddToRoute event: emits _Loaded state with added destination id to given route if it exists.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          destinations: {0: testDestination},
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.addToRoute(0, 0));
      },
      expect: () => [
        MapDestinationsState.loaded(
          destinations: {0: testDestination},
          routes: {
            0: testRoute.copyWith(
              destinations: [...testRoute.destinations, 0],
            )
          },
        ),
      ],
    );
    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_AddDestAndAddToRoute event: emits _Loaded state with added new destination to given route.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.addDestAndAddToRoute(
          testDestination,
          0,
        ));
      },
      expect: () => [
        MapDestinationsState.loaded(
          destinations: {0: testDestination},
          routes: {
            0: testRoute.copyWith(
              destinations: [...testRoute.destinations, 0],
            )
          },
        ),
      ],
    );

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_RemoveDestinationFromRoute event: emits _Loaded state with removed destination id from given route.',
      build: () => MapDestinationsBloc()
        ..emit(MapDestinationsState.loaded(
          destinations: {0: testDestination},
          routes: {
            0: testRoute.copyWith(destinations: [0])
          },
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.removeDestinationFromRoute(0, 0));
      },
      expect: () => [
        const MapDestinationsState.loaded(
          destinations: {0: testDestination},
          routes: {0: testRoute},
        ),
      ],
    );
    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_OnDestinationAdd event: Creates new destination if there is NO selected route.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.onDestinationAdd(
          testDestination,
        ));
      },
      expect: () => [
        const MapDestinationsState.loaded(
          destinations: {0: testDestination},
          routes: {0: testRoute},
        ),
      ],
    );

    blocTest<MapDestinationsBloc, MapDestinationsState>(
      '_OnDestinationAdd event: Creates new destination if there is selected route and adds it to the selected route.',
      build: () => MapDestinationsBloc()
        ..emit(const MapDestinationsState.loaded(
          routes: {0: testRoute},
          selectedRouteId: 0,
        )),
      act: (bloc) {
        bloc.add(const MapDestinationsEvent.onDestinationAdd(
          testDestination,
        ));
      },
      expect: () => [
        MapDestinationsState.loaded(
          destinations: {0: testDestination},
          routes: {
            0: testRoute.copyWith(
              destinations: [...testRoute.destinations, 0],
            )
          },
        ),
      ],
    );
  });
}
