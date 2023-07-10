import 'package:bike_compass/models/map_route.dart';
import 'package:bike_compass/presentation/screens/home/route_destinations_list/route_destination_list_tile.dart';
import 'package:flutter/material.dart';

class RouteDestinationsListView extends StatelessWidget {
  final MapRoute route;
  const RouteDestinationsListView({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              route.name,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              "${route.route.length} points",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: route.route.length,
            itemBuilder: (_, i) => RouteDestinationListTile(
              id: i.toString(),
              name: route.route[i].name,
            ),
          ),
        ),
      ],
    );
  }
}
