import 'package:bike_compass/logic/compass_bloc/compass_bloc.dart';
import 'package:bike_compass/logic/location_bloc/location_bloc.dart';
import 'package:bike_compass/router.dart';
import 'package:bike_compass/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const String appName = "bike_compass";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LocationBloc()..add(const LocationEvent.start()),
        ),
        BlocProvider(
          create: (_) => CompassBloc()..add(const CompassEvent.start()),
        ),
      ],
      child: MaterialApp(
        title: appName,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.dark,
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
