import 'package:bike_compass/logic/location_bloc/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("settings"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                BlocProvider.of<LocationBloc>(context)
                    .add(const LocationEvent.start());
              },
              child: const Text("restart location"),
            ),
          ],
        ),
      ),
    );
  }
}
