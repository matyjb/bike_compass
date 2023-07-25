import 'dart:math';

import 'package:bike_compass/logic/position_bloc/compass_bloc/compass_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompassPainter extends CustomPainter {
  final Color? strokeColor;
  final Color? arrowColor;

  CompassPainter({this.strokeColor, this.arrowColor});

  @override
  void paint(Canvas canvas, Size size) {
    const double strokeWidth = 10;
    final center = Offset(size.width / 2, size.height / 2);
    final arrowCenter = Offset(center.dx, strokeWidth / 2);
    canvas.drawCircle(
      center,
      (min(size.width, size.height) - strokeWidth) / 2,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..color = strokeColor ?? Colors.black,
    );
    canvas.drawCircle(
      arrowCenter,
      strokeWidth / 2,
      Paint()..color = arrowColor ?? Colors.red,
    );
    // canvas.translate(0, center.dy - arrowCenter.dy);
    // canvas.rotate(pi / 2);
    // canvas.drawDRRect(
    //   outer,
    //   inner,
    //   Paint()..color = arrowColor ?? Colors.red,
    // );
    // canvas.restore();
  }

  @override
  bool shouldRepaint(CompassPainter oldDelegate) {
    if (oldDelegate.arrowColor != arrowColor) return true;
    if (oldDelegate.strokeColor != strokeColor) return true;
    return false;
  }

  @override
  bool shouldRebuildSemantics(CompassPainter oldDelegate) => false;
}

class CompassArrow extends StatelessWidget {
  final Color? color;
  const CompassArrow({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompassBloc, CompassState>(
      buildWhen: (prev, curr) =>
          curr.maybeMap(orElse: () => false, hasState: (_) => true),
      builder: (context, state) {
        final double angle = state.maybeMap(
          orElse: () => 0,
          hasState: (s) => -(s.data.heading ?? 0) / 360,
        );
        return IgnorePointer(
          child: AnimatedRotation(
            curve: Curves.easeInOut,
            duration: const Duration(seconds: 1),
            turns: angle,
            child: CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CompassPainter(
                strokeColor: Theme.of(context).colorScheme.primary,
                arrowColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        );
      },
    );
  }
}
