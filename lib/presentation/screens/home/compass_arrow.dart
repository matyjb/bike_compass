import 'package:bike_compass/logic/compass_bloc/compass_bloc.dart';
import 'package:bike_compass/presentation/screens/widgets/inverted_circle_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompassArrow extends StatelessWidget {
  final Color color;
  const CompassArrow({super.key, this.color = Colors.amber});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompassBloc, CompassState>(
      buildWhen: (_, curr) =>
          curr.maybeMap(orElse: () => false, hasCompass: (_) => true),
      builder: (context, state) {
        final double angle = state.maybeMap(
          orElse: () => -45,
          hasCompass: (s) => -((s.data.heading ?? 0) + 45) / 360,
        );
        return AnimatedRotation(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 500),
          turns: angle,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(9999999999),
              bottomLeft: Radius.circular(9999999999),
              bottomRight: Radius.circular(9999999999),
            ),
            child: ClipPath(
              clipper: InvertedCircleClipper(),
              child: Container(
                color: color,
              ),
            ),
          ),
        );
      },
    );
  }
}
