import 'package:bike_compass/logic/compass_bloc/compass_bloc.dart';
import 'package:bike_compass/logic/location_bloc/location_bloc.dart';
import 'package:bike_compass/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteNames.settings);
              },
              child: const Text("go to settings"),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<LocationBloc>(context)
                    .add(const LocationEvent.start());
              },
              child: const Text("restart location"),
            ),
            BlocBuilder<LocationBloc, LocationState>(
              builder: (context, state) {
                return state.map(
                  hasLocation: (s) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("lat: ${s.data.latitude}, lon: ${s.data.longitude}"),
                      Text("heading: ${s.data.heading}"),
                    ],
                  ),
                  denied: (s) => const Icon(Icons.not_interested),
                  requestingPermission: (s) =>
                      const CircularProgressIndicator(),
                  initial: (s) => const CircularProgressIndicator(),
                );
              },
            ),
            const Text("Compass"),
            BlocBuilder<CompassBloc, CompassState>(
              builder: (context, state) {
                return state.map(
                  hasCompass: (s) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("heading: ${s.data.heading}"),
                    ],
                  ),
                  denied: (s) => const Icon(Icons.not_interested),
                  requestingPermission: (s) =>
                      const CircularProgressIndicator(),
                  initial: (s) => const CircularProgressIndicator(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
