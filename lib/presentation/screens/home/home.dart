import 'dart:async';

import 'package:bike_compass/logic/map_destinations_bloc/map_destinations_bloc.dart';
import 'package:bike_compass/logic/toolbar_cubit/toolbar_cubit.dart';
import 'package:bike_compass/presentation/screens/home/get_name_dialog.dart';
import 'package:bike_compass/presentation/screens/home/maps_with_compass.dart';
import 'package:bike_compass/presentation/screens/home/route_destination_list_view.dart';
import 'package:bike_compass/presentation/screens/home/toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider(
          create: (_) => ToolbarCubit()..load(),
          child: const HomeScreenLayout(),
        ),
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
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

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
    return BlocListener<ToolbarCubit, ToolbarState>(
      listener: (context, state) {
        if (state.maybeMap(orElse: () => true, loaded: (s) => s.expandedMap)) {
          _animationController.reverse();
        } else {
          _animationController.forward();
        }
      },
      child: Column(
        children: [
          Flexible(
            flex: _animation.value,
            child: MapsWithCompass(
              followMode: true,
              onMapCreated: _controller.complete,
            ),
          ),
          SizedBox(
            height: 50,
            child: Toolbar(
              onTapAdd: () async {
                var bloc = context.read<MapDestinationsBloc>();
                LatLngBounds pos = await _controller.future
                    .then((value) => value.getVisibleRegion());
                LatLng center = LatLng(
                  (pos.northeast.latitude + pos.southwest.latitude) / 2,
                  (pos.northeast.longitude + pos.southwest.longitude) / 2,
                );
                // ignore: use_build_context_synchronously
                showDialog<String>(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => GetNameDialog(
                    onSubmitted: (name) => Navigator.pop(context, name),
                  ),
                ).then((String? value) {
                  if (value != null) {
                    bloc.add(MapDestinationsEvent.createDestination(
                      value,
                      center,
                    ));
                  }
                });
              },
            ),
          ),
          Flexible(
            flex: 300 - _animation.value,
            child: const RouteDestinationListView(),
          ),
        ],
      ),
    );
  }
}
