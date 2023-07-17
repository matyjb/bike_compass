// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapRoute _$$_MapRouteFromJson(Map<String, dynamic> json) => _$_MapRoute(
      name: json['name'] as String,
      destinations: (json['destinations'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MapRouteToJson(_$_MapRoute instance) =>
    <String, dynamic>{
      'name': instance.name,
      'destinations': instance.destinations,
    };
