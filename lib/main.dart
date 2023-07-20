import 'package:bike_compass/data/providers/hive.dart';
import 'package:bike_compass/logic/app_map_cubit/app_map_cubit.dart';
import 'package:bike_compass/logic/compass_bloc/compass_bloc.dart';
import 'package:bike_compass/logic/location_bloc/location_bloc.dart';
import 'package:bike_compass/logic/location_permission_cubit/location_permission_cubit.dart';
import 'package:bike_compass/logic/map_data_bloc/map_data_bloc.dart';
import 'package:bike_compass/router.dart';
import 'package:bike_compass/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const String appName = "bike_compass";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveBoxProvider.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  final _locPermissionCubit = LocationPermissionCubit()..requestPermission();
  final _appMapCubit = AppMapCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _locPermissionCubit,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => LocationBloc(
              locationPermissionCubit: _locPermissionCubit,
            ),
          ),
          BlocProvider(
            create: (_) => CompassBloc(
              locationPermissionCubit: _locPermissionCubit,
            ),
          ),
          BlocProvider.value(
            value: _appMapCubit,
          ),
          BlocProvider(
            create: (_) =>
                MapDataBloc(_appMapCubit)..add(const MapDataEvent.load()),
          ),
        ],
        child: MaterialApp(
          title: appName,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.dark,
          onGenerateRoute: _appRouter.onGenerateRoute,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _locPermissionCubit.close();
    super.dispose();
  }
}
