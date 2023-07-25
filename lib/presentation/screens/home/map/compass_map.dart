import 'package:bike_compass/logic/app_map_cubit/app_map_cubit.dart';
import 'package:bike_compass/logic/position_bloc/position_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatelessWidget {
  final GoogleMapController? controller;
  final AppMapState appMapState;
  final Function(LatLngBounds) onGetMapBounds;
  final Function(GoogleMapController) onMapCreated;
  const GMap({
    super.key,
    required this.controller,
    required this.appMapState,
    required this.onGetMapBounds,
    required this.onMapCreated,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<PositionBloc, PositionState>(
      listener: (context, state) {
        if (controller == null) return;
        if (!appMapState.followMode) return;

        state.whenOrNull(
          state: (lat, lng, bearing) => controller!.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: LatLng(lat, lng),
                bearing: bearing,
                zoom: 15,
              ),
            ),
          ),
        );
      },
      listenWhen: (prev, curr) => curr.maybeMap(
        orElse: () => false,
        state: (s) => true,
      ),
      child: _GMap(
        onMapCreated: onMapCreated,
        onCameraMove: (camPos) {
          if (controller != null) return;
          controller!.getVisibleRegion().then(onGetMapBounds);
        },
      ),
    );
  }
}

class _GMap extends StatelessWidget {
  final Function(GoogleMapController)? onMapCreated;
  final Function(CameraPosition)? onCameraMove;
  const _GMap({
    this.onMapCreated,
    this.onCameraMove,
  });

  static const CameraPosition _initPos = CameraPosition(
    target: LatLng(52.22982109660557, 21.01174033821898),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _initPos,
      zoomControlsEnabled: false,
      scrollGesturesEnabled: false,
      tiltGesturesEnabled: false,
      rotateGesturesEnabled: false,
      onMapCreated: onMapCreated,
      onCameraMove: onCameraMove,
    );
  }
}
