import 'package:bike_compass/logic/app_map_cubit/app_map_cubit.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  blocTest<AppMapCubit, AppMapState>(
    '_SelectRoute event: emits state with selected route id.',
    build: () => AppMapCubit()
      ..emit(const AppMapState(
        selectedRouteIndex: null,
      )),
    act: (bloc) {
      bloc.selectRouteIndex(0);
    },
    expect: () => [
      const AppMapState(
        selectedRouteIndex: 0,
      ),
    ],
  );

  blocTest<AppMapCubit, AppMapState>(
    '_SelectRoute event: emits state with selectedRouteId set to null if user deselects route.',
    build: () => AppMapCubit()
      ..emit(const AppMapState(
        selectedRouteIndex: 0,
      )),
    act: (bloc) {
      bloc.selectRouteIndex(null);
    },
    expect: () => [
      const AppMapState(
        selectedRouteIndex: null,
      ),
    ],
  );
}
