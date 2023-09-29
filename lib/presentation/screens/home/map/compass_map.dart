import 'package:bike_compass/data/models/visible_region.dart';
import 'package:bike_compass/logic/app_map_cubit/app_map_cubit.dart';
import 'package:bike_compass/logic/position_bloc/position_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatefulWidget {
  final GoogleMapController? controller;
  final AppMapState appMapState;
  final Function(VisibleRegion) onGetMapBounds;
  final Function(GoogleMapController) onMapCreated;

  const GMap({
    super.key,
    required this.controller,
    required this.appMapState,
    required this.onGetMapBounds,
    required this.onMapCreated,
  });

  @override
  State<GMap> createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  final GlobalKey _mapKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocListener<PositionBloc, PositionState>(
      listener: (context, state) {
        if (widget.controller == null) return;
        if (!widget.appMapState.followMode) return;

        state.whenOrNull(
          state: (lat, lng, bearing) => widget.controller!.animateCamera(
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
        key: _mapKey,
        onMapCreated: widget.onMapCreated,
        onCameraMove: (camPos) {
          if (widget.controller == null) return;

          final RenderBox? mapRenderBox = _mapKey.currentContext?.findRenderObject() as RenderBox?;
          if (mapRenderBox == null || !mapRenderBox.hasSize) return;

          final double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
          final mapSize = Size(
            mapRenderBox.size.width * devicePixelRatio,
            mapRenderBox.size.height * devicePixelRatio,
          );

          Future.wait([
            widget.controller!.getLatLng(ScreenCoordinate(
              x: mapSize.width.toInt(),
              y: 0,
            )),
            widget.controller!.getLatLng(ScreenCoordinate(
              x: mapSize.width.toInt(),
              y: mapSize.height.toInt(),
            )),
            widget.controller!.getLatLng(ScreenCoordinate(
              x: 0,
              y: mapSize.height.toInt(),
            )),
            widget.controller!.getLatLng(const ScreenCoordinate(
              x: 0,
              y: 0,
            )),
          ]).then((List<LatLng> coordinates) {
            widget.onGetMapBounds(VisibleRegion(
              farEast: coordinates[0],
              nearEast: coordinates[1],
              nearWest: coordinates[2],
              farWest: coordinates[3],
            ));
          }).onError((e, _) {
            debugPrint("ERROR: $e");
          });
        },
      ),
    );
  }
}

class _GMap extends StatelessWidget {
  final Function(GoogleMapController)? onMapCreated;
  final Function(CameraPosition)? onCameraMove;
  const _GMap({
    super.key,
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
