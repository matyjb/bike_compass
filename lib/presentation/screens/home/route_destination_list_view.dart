import 'package:flutter/material.dart';

class RouteDestinationListView extends StatelessWidget {
  const RouteDestinationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      ListTile(
        title: Text("d1"),
      ),
      ListTile(
        title: Text("d2"),
      ),
      ListTile(
        title: Text("d3"),
      ),
    ]);
  }
}
