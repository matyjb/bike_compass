import 'package:bike_compass/logic/app_map_cubit/app_map_cubit.dart';
import 'package:bike_compass/logic/map_destinations_bloc/map_destinations_bloc.dart';
import 'package:bike_compass/presentation/screens/home/route_destinations_list/route_destinations_list_view.dart';
import 'package:bike_compass/presentation/screens/home/route_destinations_list/routes_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MapPointsManager extends StatelessWidget {
  const MapPointsManager({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mapDestinationsBloc = context.watch<MapDestinationsBloc>();
    final selectedRouteIndex =
        context.select<AppMapCubit, int?>((c) => c.state.selectedRouteIndex);

    return mapDestinationsBloc.state.mapOrNull(loaded: (state) {
          if (selectedRouteIndex == null) {
            return RoutesListView(routes: state.routes.entries.toList());
          } else {
            return WillPopScope(
              onWillPop: () async {
                context.read<AppMapCubit>().selectRouteIndex(null);
                return false;
              },
              child: RouteDestinationsListView(
                route: state.routes[selectedRouteIndex]!,
                onBackButton: () {
                  context.read<AppMapCubit>().selectRouteIndex(null);
                },
              ),
            );
          }
        }) ??
        const CircularProgressIndicator();
  }
}
