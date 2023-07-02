import 'package:bike_compass/logic/map_destinations_bloc/map_destinations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteDestinationListView extends StatelessWidget {
  const RouteDestinationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapDestinationsBloc, MapDestinationsState>(
      builder: (context, state) {
        return state.mapOrNull(
              loaded: (state) => ListView.builder(
                itemCount: state.destinations.length,
                itemBuilder: (context, i) => ListTile(
                  title: Text("$i - ${state.destinations[i].name}"),
                ),
              ),
            ) ??
            const CircularProgressIndicator();
      },
    );
  }
}
