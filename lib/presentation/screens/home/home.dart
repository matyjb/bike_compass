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

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(milliseconds: 100), vsync: this);
    _animation = IntTween(begin: 220, end: 80).animate(_animationController);
    _animation.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ToolbarCubit, ToolbarState>(
      listener: (context, state) {
        if(state.maybeMap(orElse: ()=>true, loaded: (s)=>s.expandedMap)){
          _animationController.reverse();
        }else{
          _animationController.forward();
        }
      },
      child: Column(
        children: [
          Flexible(
            flex: _animation.value,
            child: const MapsWithCompass(
              followMode: true,
            ),
          ),
          const SizedBox(
            height: 50,
            child: Toolbar(),
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
