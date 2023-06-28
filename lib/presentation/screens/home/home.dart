import 'package:bike_compass/logic/toolbar_cubit/toolbar_cubit.dart';
import 'package:bike_compass/presentation/screens/home/maps_with_compass.dart';
import 'package:bike_compass/presentation/screens/home/route_destination_list_view.dart';
import 'package:bike_compass/presentation/screens/home/toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider(
          create: (_) => ToolbarCubit()..load(),
          child: const Column(
            children: [
              Flexible(
                flex: 2,
                child: MapsWithCompass(
                  followMode: true,
                ),
              ),
              SizedBox(
                height: 50,
                child: Toolbar(),
              ),
              Flexible(
                flex: 1,
                child: RouteDestinationListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
