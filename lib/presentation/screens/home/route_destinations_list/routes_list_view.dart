import 'package:bike_compass/data/models/map_route.dart';
import 'package:bike_compass/logic/map_destinations_bloc/map_destinations_bloc.dart';
import 'package:bike_compass/presentation/screens/home/route_destinations_list/route_list_tile.dart';
import 'package:bike_compass/presentation/screens/home/toolbar/get_name_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoutesListView extends StatelessWidget {
  final List<MapEntry<int, MapRoute>> routes;
  const RoutesListView({super.key, required this.routes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: routes.length,
            itemBuilder: (_, i) => RouteListTile(
                id: i.toString(),
                name: routes[i].value.name,
                onTap: () {
                  context
                      .read<MapDestinationsBloc>()
                      .add(MapDestinationsEvent.selectRoute(routes[i].key));
                }),
          ),
        ),
        Center(
          child: TextButton(
            onPressed: () {
              GetNameDialog.showStandardDialog(context).then((String? name) {
                if (name != null) {
                  final bloc = context.read<MapDestinationsBloc>();
                  bloc.add(MapDestinationsEvent.addRoute(MapRoute(
                    name: name,
                    destinations: [],
                  )));
                }
              });
            },
            child: const Text("Create route"),
          ),
        )
      ],
    );
  }
}
