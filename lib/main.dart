import 'package:bike_compass/data/providers/hive.dart';
import 'package:bike_compass/logic/app_map_cubit/app_map_cubit.dart';
import 'package:bike_compass/logic/map_data_bloc/map_data_bloc.dart';
import 'package:bike_compass/logic/position_bloc/position_bloc_provider.dart';
import 'package:bike_compass/router.dart';
import 'package:bike_compass/theme_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const String appName = "bike_compass";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveBoxProvider.init();
  try {
    runApp(MyApp());
  } catch (e) {
    if (kDebugMode) {
      print("F! $e");
    }
  }
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  final _appMapCubit = AppMapCubit();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _appMapCubit,
        ),
        BlocProvider(
          create: (_) => MapDataBloc(_appMapCubit)..add(const MapDataEvent.load()),
        ),
      ],
      child: PositionBlocProvider(
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
}
