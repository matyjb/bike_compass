// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapDestination _$$_MapDestinationFromJson(Map<String, dynamic> json) =>
    _$_MapDestination(
      name: json['name'] as String,
      location: const LatLngJsonConverter()
          .fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MapDestinationToJson(_$_MapDestination instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': const LatLngJsonConverter().toJson(instance.location),
    };
