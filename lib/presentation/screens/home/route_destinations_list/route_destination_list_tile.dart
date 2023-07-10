import 'package:flutter/material.dart';

class RouteDestinationListTile extends StatelessWidget {
  final String id;
  final String name;
  final Function()? onRemove;
  const RouteDestinationListTile({
    super.key,
    required this.id,
    required this.name,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 15,
        child: Text(id.toString()),
      ),
      title: Text(
        name,
        textAlign: TextAlign.left,
      ),
    );
  }
}
