import 'dart:async';

import 'package:bike_compass/logic/location_bloc/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatefulWidget {
  const GMap({super.key});

  @override
  State<GMap> createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(52.22982109660557, 21.01174033821898),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationBloc, LocationState>(
      listener: (context, state) async {
        final controller = await _controller.future;
        state.whenOrNull(
          hasLocation: (s) {
            if (s.latitude == null || s.longitude == null) return null;
            controller.animateCamera(
              CameraUpdate.newLatLng(
                LatLng(s.latitude!, s.longitude!),
              ),
            );
          },
        );
      },
      listenWhen: (_, curr) =>
          curr.whenOrNull(hasLocation: (_) => true) ?? false,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        zoomControlsEnabled: false,
        scrollGesturesEnabled: false,
        tiltGesturesEnabled: false,
        rotateGesturesEnabled: false,
        onMapCreated: _controller.complete,
      ),
    );
  }
}
