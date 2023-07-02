import 'dart:async';

import 'package:bike_compass/logic/location_bloc/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsWithCompass extends StatefulWidget {
  final bool followMode;
  final Function(GoogleMapController)? onMapCreated;
  const MapsWithCompass({
    super.key,
    this.followMode = false,
    this.onMapCreated,
  });

  @override
  State<MapsWithCompass> createState() => _MapsWithCompassState();
}

class _MapsWithCompassState extends State<MapsWithCompass> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _initPos = CameraPosition(
    target: LatLng(52.22982109660557, 21.01174033821898),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: BlocListener<LocationBloc, LocationState>(
        listener: (context, state) async {
          final controller = await _controller.future;
          state.whenOrNull(
            hasLocation: (s) {
              if (s.latitude == null || s.longitude == null) return null;
              if (!widget.followMode) return null;
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
          initialCameraPosition: _initPos,
          zoomControlsEnabled: false,
          scrollGesturesEnabled: false,
          tiltGesturesEnabled: false,
          rotateGesturesEnabled: false,
          onMapCreated: (controller) {
            _controller.complete(controller);
            if (widget.onMapCreated != null) {
              widget.onMapCreated!(controller);
            }
          },
        ),
      ),
    );
  }
}
