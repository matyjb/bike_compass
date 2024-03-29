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
    return BlocBuilder<MapDestinationsBloc, MapDestinationsState>(
      builder: (context, state) {
        return state.mapOrNull(
              loaded: (state) {
                if (state.selectedRoute == null) {
                  return RoutesListView(routes: state.routes.entries.toList());
                } else {
                  return WillPopScope(
                    onWillPop: () async {
                      final bloc = context.read<MapDestinationsBloc>();
                      bool hasSelected = bloc.state.mapOrNull(
                            loaded: (s) =>
                                s.selectedRoute != null ? true : false,
                          ) ??
                          false;
                      if (hasSelected) {
                        bloc.add(const MapDestinationsEvent.selectRoute(null));
                      }
                      return !hasSelected;
                    },
                    child: RouteDestinationsListView(
                      route: state.selectedRoute!,
                      onBackButton: () {
                        final bloc = context.read<MapDestinationsBloc>();
                        bloc.add(const MapDestinationsEvent.selectRoute(null));
                      },
                    ),
                  );
                }
              },
            ) ??
            const CircularProgressIndicator();
      },
    );
  }
}
