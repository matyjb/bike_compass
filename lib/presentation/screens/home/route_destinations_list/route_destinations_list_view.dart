import 'package:bike_compass/models/map_route.dart';
import 'package:bike_compass/presentation/screens/home/route_destinations_list/route_destination_list_tile.dart';
import 'package:flutter/material.dart';

class RouteDestinationsListView extends StatelessWidget {
  final MapRoute route;
  final Function() onBackButton;
  const RouteDestinationsListView({
    super.key,
    required this.route,
    required this.onBackButton,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      ">>> ",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      route.name,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Text(
                  "${route.destinations.length} points",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: route.destinations.length,
                itemBuilder: (_, i) => RouteDestinationListTile(
                  id: i.toString(),
                  // name: route.destinations[i].name,
                  name: "test destination"
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.small(
              onPressed: onBackButton,
              child: const Icon(Icons.arrow_back_rounded),
            ),
          ),
        ),
      ],
    );
  }
}
