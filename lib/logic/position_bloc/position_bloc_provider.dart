import 'package:bike_compass/logic/position_bloc/compass_bloc/compass_bloc.dart';
import 'package:bike_compass/logic/position_bloc/location_bloc/location_bloc.dart';
import 'package:bike_compass/logic/position_bloc/location_permission_cubit/location_permission_cubit.dart';
import 'package:bike_compass/logic/position_bloc/position_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PositionBlocProvider extends StatefulWidget {
  final Widget child;
  const PositionBlocProvider({super.key, required this.child});

  @override
  State<PositionBlocProvider> createState() => _PositionBlocProviderState();
}

class _PositionBlocProviderState extends State<PositionBlocProvider> {
  final _locPermissionCubit = LocationPermissionCubit()..requestPermission();
  late final LocationBloc _locationBloc;
  late final CompassBloc _compassBloc;

  _PositionBlocProviderState() {
    _locationBloc = LocationBloc(locationPermissionCubit: _locPermissionCubit);
    _compassBloc = CompassBloc(locationPermissionCubit: _locPermissionCubit);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _locPermissionCubit,
        ),
        BlocProvider.value(
          value: _locationBloc,
        ),
        BlocProvider.value(
          value: _compassBloc,
        ),
        BlocProvider(
          create: (_) => PositionBloc(
            locationBloc: _locationBloc,
            compassBloc: _compassBloc,
          ),
        ),
      ],
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _locPermissionCubit.close();
    _locationBloc.close();
    _compassBloc.close();
    super.dispose();
  }
}
