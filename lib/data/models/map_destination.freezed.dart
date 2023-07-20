// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapDestination _$MapDestinationFromJson(Map<String, dynamic> json) {
  return _MapDestination.fromJson(json);
}

/// @nodoc
mixin _$MapDestination {
  String get name => throw _privateConstructorUsedError;
  @LatLngJsonConverter()
  LatLng get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapDestinationCopyWith<MapDestination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapDestinationCopyWith<$Res> {
  factory $MapDestinationCopyWith(
          MapDestination value, $Res Function(MapDestination) then) =
      _$MapDestinationCopyWithImpl<$Res, MapDestination>;
  @useResult
  $Res call({String name, @LatLngJsonConverter() LatLng location});
}

/// @nodoc
class _$MapDestinationCopyWithImpl<$Res, $Val extends MapDestination>
    implements $MapDestinationCopyWith<$Res> {
  _$MapDestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapDestinationCopyWith<$Res>
    implements $MapDestinationCopyWith<$Res> {
  factory _$$_MapDestinationCopyWith(
          _$_MapDestination value, $Res Function(_$_MapDestination) then) =
      __$$_MapDestinationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @LatLngJsonConverter() LatLng location});
}

/// @nodoc
class __$$_MapDestinationCopyWithImpl<$Res>
    extends _$MapDestinationCopyWithImpl<$Res, _$_MapDestination>
    implements _$$_MapDestinationCopyWith<$Res> {
  __$$_MapDestinationCopyWithImpl(
      _$_MapDestination _value, $Res Function(_$_MapDestination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_$_MapDestination(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapDestination implements _MapDestination {
  const _$_MapDestination(
      {required this.name, @LatLngJsonConverter() required this.location});

  factory _$_MapDestination.fromJson(Map<String, dynamic> json) =>
      _$$_MapDestinationFromJson(json);

  @override
  final String name;
  @override
  @LatLngJsonConverter()
  final LatLng location;

  @override
  String toString() {
    return 'MapDestination(name: $name, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapDestination &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapDestinationCopyWith<_$_MapDestination> get copyWith =>
      __$$_MapDestinationCopyWithImpl<_$_MapDestination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapDestinationToJson(
      this,
    );
  }
}

abstract class _MapDestination implements MapDestination {
  const factory _MapDestination(
          {required final String name,
          @LatLngJsonConverter() required final LatLng location}) =
      _$_MapDestination;

  factory _MapDestination.fromJson(Map<String, dynamic> json) =
      _$_MapDestination.fromJson;

  @override
  String get name;
  @override
  @LatLngJsonConverter()
  LatLng get location;
  @override
  @JsonKey(ignore: true)
  _$$_MapDestinationCopyWith<_$_MapDestination> get copyWith =>
      throw _privateConstructorUsedError;
}
