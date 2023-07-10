import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_route.freezed.dart';
part 'map_route.g.dart';

@freezed
class MapRoute with _$MapRoute  {
  const factory MapRoute({
    required String name,
    required List<int> destinations,
  }) = _MapRoute;

  factory MapRoute.fromJson(Map<String, Object?> json)
      => _$MapRouteFromJson(json);
}