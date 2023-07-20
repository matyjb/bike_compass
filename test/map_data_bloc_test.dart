import 'dart:io';

import 'package:bike_compass/data/models/map_destination.dart';
import 'package:bike_compass/data/models/map_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:bike_compass/logic/map_data_bloc/map_data_bloc.dart';
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
  group('MapDataBloc initial tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\init"));
    tearDown(() async => await cleanUpHive());
    blocTest<MapDataBloc, MapDataState>(
      'initial state should be .initial()',
      build: () => MapDataBloc(),
      verify: (bloc) => bloc.state == const MapDataState.initial(),
    );
    blocTest<MapDataBloc, MapDataState>(
      'emits [Loading, Loaded] when load event is added.',
      build: () => MapDataBloc(),
      act: (bloc) => bloc.add(const MapDataEvent.load()),
      expect: () => const <MapDataState>[
        MapDataState.loading(),
        MapDataState.loaded(),
      ],
    );
    final testLoadedState = MapDataState.loaded(
      destinations: {0: testDestination},
      routes: {
        0: testRoute.copyWith(destinations: [0])
      },
    );
    blocTest<MapDataBloc, MapDataState>(
      'State should be saved to disk after each _Loaded state emitted',
      build: () => MapDataBloc()..emit(testLoadedState),
      act: (bloc) => bloc
        ..add(const MapDataEvent.save())
        ..add(const MapDataEvent.load()),
      expect: () => <MapDataState>[
        const MapDataState.loading(),
        testLoadedState,
      ],
    );
  });

  group('MapDataBloc destinations crud tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\dest_crud"));
    tearDown(() async => await cleanUpHive());

    blocTest<MapDataBloc, MapDataState>(
      '_AddDestination event: emits _Loaded state with added destination.',
      build: () =>
          MapDataBloc()..emit(const MapDataState.loaded()),
      act: (bloc) {
        bloc.add(const MapDataEvent.addDestination(testDestination));
      },
      expect: () => [
        const MapDataState.loaded(
          destinations: {0: testDestination},
        ),
      ],
    );

    blocTest<MapDataBloc, MapDataState>(
      '_EditDestination event: emits _Loaded state with edited destination.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          destinations: {0: testDestination},
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.editDestination(
          0,
          testDestinationEdit,
        ));
      },
      expect: () => [
        const MapDataState.loaded(
          destinations: {0: testDestinationEdit},
        ),
      ],
    );

    blocTest<MapDataBloc, MapDataState>(
      '_DeleteDestination event: emits _Loaded state with deleted destination.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          destinations: {0: testDestination},
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.deleteDestination(0));
      },
      expect: () => [
        const MapDataState.loaded(),
      ],
    );

    blocTest<MapDataBloc, MapDataState>(
      '_DeleteDestination event: deleting destination should remove this destination from all routes.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
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
        bloc.add(const MapDataEvent.deleteDestination(0));
      },
      expect: () => [
        const MapDataState.loaded(
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

  group('MapDataBloc route crud tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\route_crud"));
    tearDown(() async => await cleanUpHive());

    const testRoute = MapRoute(name: "test", destinations: []);
    blocTest<MapDataBloc, MapDataState>(
      '_AddRoute event: emits _Loaded state with added route.',
      build: () =>
          MapDataBloc()..emit(const MapDataState.loaded()),
      act: (bloc) {
        bloc.add(const MapDataEvent.addRoute(testRoute));
      },
      expect: () => [
        const MapDataState.loaded(
          routes: {0: testRoute},
        ),
      ],
    );

    blocTest<MapDataBloc, MapDataState>(
      '_EditRoute event: emits _Loaded state with edited route.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.editRoute(0, testRouteEdit));
      },
      expect: () => [
        const MapDataState.loaded(
          routes: {0: testRouteEdit},
        ),
      ],
    );

    blocTest<MapDataBloc, MapDataState>(
      '_DeleteRoute event: emits _Loaded state with deleted route.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.deleteRoute(0));
      },
      expect: () => [
        const MapDataState.loaded(),
      ],
    );
  });

  group('MapDestination route selection tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\route_selection"));
    tearDown(() async => await cleanUpHive());

    blocTest<MapDataBloc, MapDataState>(
      '_SelectRoute event: emits _Loaded state with selected route id if it exists.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          routes: {0: testRoute},
          selectedRouteId: null,
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.selectRoute(0));
      },
      expect: () => [
        const MapDataState.loaded(
          routes: {0: testRoute},
          selectedRouteId: 0,
        ),
      ],
    );

    blocTest<MapDataBloc, MapDataState>(
      '_SelectRoute event: does nothing if selectedRoute id doesn\'t exist.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.selectRoute(9999));
      },
      expect: () => [],
      verify: (bloc) =>
          bloc.state ==
          const MapDataState.loaded(
            routes: {0: testRoute},
            selectedRouteId: null,
          ),
    );

    blocTest<MapDataBloc, MapDataState>(
      '_SelectRoute event: emits _Loaded state with selectedRouteId set to null if user deselects route.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          routes: {0: testRoute},
          selectedRouteId: 0,
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.selectRoute(null));
      },
      expect: () => [
        const MapDataState.loaded(
          routes: {0: testRoute},
          selectedRouteId: null,
        ),
      ],
    );
  });

  group('MapDestinationBloc extra events tests', () {
    setUp(() async => await setUpHive("$fakeStoragePath\\extra_events"));
    tearDown(() async => await cleanUpHive());

    blocTest<MapDataBloc, MapDataState>(
      '_AddToRoute event: emits _Loaded state with added destination id to given route if it exists.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          destinations: {0: testDestination},
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.addToRoute(0, 0));
      },
      expect: () => [
        MapDataState.loaded(
          destinations: {0: testDestination},
          routes: {
            0: testRoute.copyWith(
              destinations: [...testRoute.destinations, 0],
            )
          },
        ),
      ],
    );
    blocTest<MapDataBloc, MapDataState>(
      '_AddDestAndAddToRoute event: emits _Loaded state with added new destination to given route.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.addDestAndAddToRoute(
          testDestination,
          0,
        ));
      },
      expect: () => [
        MapDataState.loaded(
          destinations: {0: testDestination},
          routes: {
            0: testRoute.copyWith(
              destinations: [...testRoute.destinations, 0],
            )
          },
        ),
      ],
    );

    blocTest<MapDataBloc, MapDataState>(
      '_RemoveDestinationFromRoute event: emits _Loaded state with removed destination id from given route.',
      build: () => MapDataBloc()
        ..emit(MapDataState.loaded(
          destinations: {0: testDestination},
          routes: {
            0: testRoute.copyWith(destinations: [0])
          },
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.removeDestinationFromRoute(0, 0));
      },
      expect: () => [
        const MapDataState.loaded(
          destinations: {0: testDestination},
          routes: {0: testRoute},
        ),
      ],
    );
    blocTest<MapDataBloc, MapDataState>(
      '_MoveDestinationInRoute event: emits _Loaded state with moved destination to another position within given route. (case 0)',
      build: () => MapDataBloc()
        ..emit(MapDataState.loaded(
          destinations: {
            0: testDestination,
            1: testDestinationEdit,
            2: testDestination
          },
          routes: {
            0: testRoute.copyWith(destinations: [0, 1, 2]),
            1: testRouteEdit.copyWith(destinations: [0, 1, 2])
          },
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.moveDestinationInRoute(0, 1, 2));
      },
      expect: () => [
        MapDataState.loaded(
          destinations: {
            0: testDestination,
            1: testDestinationEdit,
            2: testDestination
          },
          routes: {
            0: testRoute.copyWith(destinations: [0, 2, 1]),
            1: testRouteEdit.copyWith(destinations: [0, 1, 2])
          },
        ),
      ],
    );
    blocTest<MapDataBloc, MapDataState>(
      '_MoveDestinationInRoute event: emits _Loaded state with moved destination to another position within given route. (case 1)',
      build: () => MapDataBloc()
        ..emit(MapDataState.loaded(
          destinations: {
            0: testDestination,
            1: testDestinationEdit,
            2: testDestination
          },
          routes: {
            0: testRoute.copyWith(destinations: [0, 1, 2]),
            1: testRouteEdit.copyWith(destinations: [0, 1, 2])
          },
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.moveDestinationInRoute(0, 2, 1));
      },
      expect: () => [
        MapDataState.loaded(
          destinations: {
            0: testDestination,
            1: testDestinationEdit,
            2: testDestination
          },
          routes: {
            0: testRoute.copyWith(destinations: [0, 2, 1]),
            1: testRouteEdit.copyWith(destinations: [0, 1, 2])
          },
        ),
      ],
    );
    blocTest<MapDataBloc, MapDataState>(
      '_OnDestinationAdd event: Creates new destination if there is NO selected route.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          routes: {0: testRoute},
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.onDestinationAdd(
          testDestination,
        ));
      },
      expect: () => [
        const MapDataState.loaded(
          destinations: {0: testDestination},
          routes: {0: testRoute},
        ),
      ],
    );

    blocTest<MapDataBloc, MapDataState>(
      '_OnDestinationAdd event: Creates new destination if there is selected route and adds it to the selected route.',
      build: () => MapDataBloc()
        ..emit(const MapDataState.loaded(
          routes: {0: testRoute},
          selectedRouteId: 0,
        )),
      act: (bloc) {
        bloc.add(const MapDataEvent.onDestinationAdd(
          testDestination,
        ));
      },
      expect: () => [
        MapDataState.loaded(
          destinations: {0: testDestination},
          routes: {
            0: testRoute.copyWith(
              destinations: [...testRoute.destinations, 0],
            )
          },
          selectedRouteId: 0,
        ),
      ],
    );
  });
}
