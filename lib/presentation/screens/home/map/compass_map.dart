import 'package:bike_compass/logic/app_map_cubit/app_map_cubit.dart';
import 'package:bike_compass/logic/compass_bloc/compass_bloc.dart';
import 'package:bike_compass/logic/location_bloc/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMapBlocsListener extends StatefulWidget {
  final Function(BuildContext, LatLng, CompassState) onChange;
  final Widget child;

  const GMapBlocsListener({
    super.key,
    required this.onChange,
    required this.child,
  });

  @override
  State<GMapBlocsListener> createState() => _GMapBlocsListenerState();
}

class _GMapBlocsListenerState extends State<GMapBlocsListener> {
  LatLng? location;
  CompassState? compass;

  reportChange(
    BuildContext context, {
    LatLng? locationState,
    CompassState? compassState,
  }) {
    final l = locationState ?? location;
    final c = compassState ?? compass;
    if (l != null && c != null) {
      widget.onChange(context, l, c);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LocationBloc, LocationState>(
          listener: (context, state) {
            dynamic lat = state.mapOrNull(hasLocation: (s) => s.data.latitude);
            dynamic lng = state.mapOrNull(hasLocation: (s) => s.data.longitude);
            if (lat != null && lng != null) {
              LatLng pos = LatLng(lat, lng);
              setState(() {
                location = pos;
              });
              reportChange(context, locationState: pos);
            }
          },
          listenWhen: (_, curr) =>
              curr.whenOrNull(hasLocation: (_) => true) ?? false,
        ),
        BlocListener<CompassBloc, CompassState>(
          listener: (context, state) {
            setState(() {
              compass = state;
            });
            reportChange(context, compassState: state);
          },
          listenWhen: (_, curr) =>
              curr.whenOrNull(hasState: (_) => true) ?? false,
        ),
      ],
      child: widget.child,
    );
  }
}

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
    return GMapBlocsListener(
      onChange: (_, location, compass) async {
        if (controller == null) return;
        if (!appMapState.followMode) return null;

        final latlng = LatLng(location.latitude, location.longitude);
        final bearing = compass.mapOrNull(hasState: (s) => s.data.heading) ?? 0;
        controller!.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: latlng,
              bearing: bearing,
              zoom: 15,
            ),
          ),
        );
      },
      // listenWhen: (_, curr) =>
      //     curr.whenOrNull(hasLocation: (_) => true) ?? false,
      child: _GMap(
        // onMapCreated: (controller) => setState(() {
        //   if (widget.onMapCreated != null) {
        //     widget.onMapCreated!(controller);
        //   }
        //   _controller = controller;
        // }),
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
