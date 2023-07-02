import 'package:bike_compass/logic/toolbar_cubit/toolbar_cubit.dart';
import 'package:bike_compass/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Toolbar extends StatelessWidget {
  final Function() onTapAdd;
  const Toolbar({super.key, required this.onTapAdd});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BlocBuilder<ToolbarCubit, ToolbarState>(
        builder: (context, state) {
          bool? followMode = state.mapOrNull(loaded: (s) => s.followMode);
          bool? expandedMap = state.mapOrNull(loaded: (s) => s.expandedMap);
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
                onPressed: expandedMap == null
                    ? null
                    : context.read<ToolbarCubit>().toggleExpandedMap,
                icon: Icon(
                  expandedMap == true
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                ),
              ),
              IconButton(
                onPressed: followMode == null
                    ? null
                    : context.read<ToolbarCubit>().toggleFollowMode,
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
