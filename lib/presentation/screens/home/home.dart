import 'package:bike_compass/data/models/map_destination.dart';
import 'package:bike_compass/logic/map_data_bloc/map_data_bloc.dart';
import 'package:bike_compass/logic/app_map_cubit/app_map_cubit.dart';
import 'package:bike_compass/presentation/screens/home/map/compass_map.dart';
import 'package:bike_compass/presentation/screens/home/toolbar/get_name_dialog.dart';
import 'package:bike_compass/presentation/screens/home/route_destinations_list/map_points_manager.dart';
import 'package:bike_compass/presentation/screens/home/toolbar/toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: HomeScreenLayout(),
      ),
    );
  }
}

class HomeScreenLayout extends StatefulWidget {
  const HomeScreenLayout({super.key});

  @override
  State<HomeScreenLayout> createState() => _HomeScreenLayoutState();
}

class _HomeScreenLayoutState extends State<HomeScreenLayout>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<int> _animation;
  GoogleMapController? _controller;
  LatLngBounds? _bounds;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 100), vsync: this);
    _animation = IntTween(begin: 220, end: 80).animate(_animationController);
    _animation.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppMapCubit, AppMapState>(
      listener: (context, state) {
        if (state.expandedMap) {
          _animationController.reverse();
        } else {
          _animationController.forward();
        }
      },
      builder: (context, appMapState) => Column(
        children: [
          Flexible(
            flex: _animation.value,
            child: GMap(
              appMapState: appMapState,
              controller: _controller,
              onGetMapBounds: (bounds) => setState(() {
                _bounds = bounds;
              }),
              onMapCreated: (controller) => setState(() {
                _controller = controller;
              }),
            ),
          ),
          SizedBox(
            height: 50,
            child: Toolbar(
              onTapAdd: _controller == null
                  ? null
                  : () {
                      if (_bounds == null) return;
                      LatLng center = LatLng(
                        (_bounds!.northeast.latitude +
                                _bounds!.southwest.latitude) /
                            2,
                        (_bounds!.northeast.longitude +
                                _bounds!.southwest.longitude) /
                            2,
                      );
                      // ignore: use_build_context_synchronously
                      GetNameDialog.showStandardDialog(context)
                          .then((String? value) {
                        if (value != null) {
                          final bloc = context.read<MapDataBloc>();
                          bloc.add(MapDataEvent.onDestinationAdd(
                            MapDestination(name: value, location: center),
                          ));
                        }
                      });
                    },
            ),
          ),
          Flexible(
            flex: 300 - _animation.value,
            child: const MapPointsManager(),
          ),
        ],
      ),
    );
  }
}
