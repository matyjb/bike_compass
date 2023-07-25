import 'package:bike_compass/logic/app_map_cubit/app_map_cubit.dart';
import 'package:bike_compass/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Toolbar extends StatelessWidget {
  final Function()? onTapAdd;
  const Toolbar({super.key, this.onTapAdd});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BlocBuilder<AppMapCubit, AppMapState>(
        builder: (context, state) {
          bool followMode = state.followMode;
          bool expandedMap = state.expandedMap;
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteNames.settings);
                },
                icon: const Icon(Icons.settings),
              ),
              IconButton(
                onPressed: context.read<AppMapCubit>().toggleExpandedMap,
                icon: Icon(
                  expandedMap == true
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                ),
              ),
              IconButton(
                onPressed: context.read<AppMapCubit>().toggleFollowMode,
                icon: Icon(
                  followMode == true
                      ? Icons.location_searching_rounded
                      : Icons.location_disabled_rounded,
                ),
              ),
              Transform.scale(
                scale: 2,
                child: IconButton.filled(
                  onPressed: onTapAdd,
                  icon: const Icon(Icons.add_rounded),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
