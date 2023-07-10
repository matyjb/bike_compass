import 'package:flutter/material.dart';

class RouteListTile extends StatelessWidget {
  final String id;
  final String name;
  final Function()? onRemove;
  final Function()? onTap;
  const RouteListTile({
    super.key,
    required this.id,
    required this.name,
    this.onRemove,
    this.onTap,
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
      onTap: onTap,
    );
  }
}
