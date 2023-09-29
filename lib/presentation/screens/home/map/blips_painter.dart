import 'dart:math';

import 'package:bike_compass/data/models/map_destination.dart';
import 'package:bike_compass/data/models/visible_region.dart';
import 'package:bike_compass/helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vector_math/vector_math.dart' as vm;

(vm.Vector4, vm.Vector4) getMappingCoefficients(List<vm.Vector2> p) {
  final px = vm.Vector4(p[0].x, p[1].x, p[2].x, p[3].x);
  final py = vm.Vector4(p[0].y, p[1].y, p[2].y, p[3].y);

  final A = vm.Matrix4.columns(
    vm.Vector4.all(1),
    vm.Vector4(0, 1, 1, 0),
    vm.Vector4(0, 0, 1, 1),
    vm.Vector4(0, 0, 1, 0),
  )..invert();

  return (A * px, A * py);
}

vm.Vector2 mapToScreen(vm.Vector2 p, vm.Vector4 a, vm.Vector4 b, Size screen) {
  final aa = a[3] * b[2] - a[2] * b[3];
  final bb = a[3] * b[0] - a[0] * b[3] + a[1] * b[2] - a[2] * b[1] + p.x * b[3] - p.y * a[3];
  final cc = a[1] * b[0] - a[0] * b[1] + p.x * b[1] - p.y * a[1];

  final d = sqrt(bb * bb - 4 * aa * cc);

  final m = aa == 0 ? -cc / bb : (-bb + d) / (2 * aa);
  final l = a[1] + a[3] * m == 0 ? 0 : (p.x - a[0] - a[2] * m) / (a[1] + a[3] * m);

  return vm.Vector2(l * screen.width, m * screen.height);
}

class _BlipsPainter extends CustomPainter {
  final List<MapDestination> points;
  final VisibleRegion visibleRegion;
  _BlipsPainter(this.points, this.visibleRegion);

  @override
  void paint(Canvas canvas, Size size) {
    final (a, b) = getMappingCoefficients([
      visibleRegion.farWest.toVec2(),
      visibleRegion.farEast.toVec2(),
      visibleRegion.nearEast.toVec2(),
      visibleRegion.nearWest.toVec2(),
    ]);

    drawMapBlip(String label, LatLng location) {
      vm.Vector2 tmp = mapToScreen(location.toVec2(), a, b, size);
      Offset pos = Offset(tmp.x, tmp.y);
      debugPrint(pos.toString());

      const s = 30.0;
      canvas.drawCircle(pos, s, Paint()..color = Color(label.hashCode | 0xFF000000));
      const textStyle = TextStyle(
        color: Colors.white,
        fontSize: s,
        fontWeight: FontWeight.bold,
      );
      final textSpan = TextSpan(
        text: label,
        style: textStyle,
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        pos - Offset(textPainter.width / 2, textPainter.height / 2),
      );
    }

    // for each pair of points that create an edge calculate normal vector (anticlockwise)
    List<vm.Vector2> vecs = [
      visibleRegion.nearWest.toVec2(),
      visibleRegion.nearEast.toVec2(),
      visibleRegion.farEast.toVec2(),
      visibleRegion.farWest.toVec2(),
    ];
    List<vm.Vector2> normals = [
      for (int i = 0; i < vecs.length; i++)
        vm.Vector2(
          vecs[(i - 1) % vecs.length].y - vecs[i].y,
          vecs[i].x - vecs[(i - 1) % vecs.length].x,
        ).normalized()
    ];

    // calculate dot product of the vector and one of the edges
    // if dot product tells that the point is on the right ( >0 ) side project point onto the line
    final center = visibleRegion.center.toVec2();
    for (var point in points.reversed) {
      for (var i = 0; i < normals.length; i++) {
        vm.Vector2 pos = point.location.toVec2();
        final origin = vecs[i];
        final normal = normals[i];
        if (normal.dot(pos - origin) > 0) {
          vm.Vector2 directionToCenter = (center - pos).normalized();
          double dotProduct = directionToCenter.dot(normal);

          pos += normal * dotProduct;
        }

        drawMapBlip(point.name.substring(0, 1), LatLng(pos.x, pos.y));
      }
    }
    drawMapBlip("NE  ", visibleRegion.farEast);
    drawMapBlip("  NW", visibleRegion.farWest);
    drawMapBlip("SE  ", visibleRegion.nearEast);
    drawMapBlip("  SW", visibleRegion.nearWest);
    drawMapBlip("C", visibleRegion.center);
  }

  @override
  bool shouldRepaint(_BlipsPainter oldDelegate) => oldDelegate.points != points || oldDelegate.visibleRegion != visibleRegion;

  @override
  // Todo: semantics for points
  bool shouldRebuildSemantics(_BlipsPainter oldDelegate) => false;
}

class BlipsPaint extends StatelessWidget {
  final Widget child;
  final VisibleRegion? visibleBounds;
  final List<MapDestination> points;
  const BlipsPaint({
    super.key,
    required this.child,
    required this.points,
    this.visibleBounds,
  });

  @override
  Widget build(BuildContext context) {
    if (visibleBounds == null) return child;

    return CustomPaint(
      foregroundPainter: _BlipsPainter(points, visibleBounds!),
      child: child,
    );
  }
}
