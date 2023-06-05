import 'package:bike_compass/presentation/screens/home/gmap.dart';
import 'package:bike_compass/presentation/screens/widgets/inverted_circle_clipper.dart';
import 'package:flutter/material.dart';

import 'compass_arrow.dart';

class Compass extends StatelessWidget {
  const Compass({super.key});

  _gmapMask() => IgnorePointer(
        child: ClipPath(
          clipper: InvertedCircleClipper(),
          child: Builder(
            builder: (context) => Container(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          children: [
            const GMap(),
            Transform.scale(
              scale: 1.01,
              child: _gmapMask(),
            ),
            const CompassArrow(),
          ],
        ),
      ),
    );
  }
}
