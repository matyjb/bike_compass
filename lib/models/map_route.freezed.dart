// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapRoute _$MapRouteFromJson(Map<String, dynamic> json) {
  return _MapRoute.fromJson(json);
}

/// @nodoc
mixin _$MapRoute {
  String get name => throw _privateConstructorUsedError;
  List<int> get destinations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapRouteCopyWith<MapRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapRouteCopyWith<$Res> {
  factory $MapRouteCopyWith(MapRoute value, $Res Function(MapRoute) then) =
      _$MapRouteCopyWithImpl<$Res, MapRoute>;
  @useResult
  $Res call({String name, List<int> destinations});
}

/// @nodoc
class _$MapRouteCopyWithImpl<$Res, $Val extends MapRoute>
    implements $MapRouteCopyWith<$Res> {
  _$MapRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? destinations = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      destinations: null == destinations
          ? _value.destinations
          : destinations // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapRouteCopyWith<$Res> implements $MapRouteCopyWith<$Res> {
  factory _$$_MapRouteCopyWith(
          _$_MapRoute value, $Res Function(_$_MapRoute) then) =
      __$$_MapRouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<int> destinations});
}

/// @nodoc
class __$$_MapRouteCopyWithImpl<$Res>
    extends _$MapRouteCopyWithImpl<$Res, _$_MapRoute>
    implements _$$_MapRouteCopyWith<$Res> {
  __$$_MapRouteCopyWithImpl(
      _$_MapRoute _value, $Res Function(_$_MapRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? destinations = null,
  }) {
    return _then(_$_MapRoute(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      destinations: null == destinations
          ? _value._destinations
          : destinations // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapRoute implements _MapRoute {
  const _$_MapRoute({required this.name, required final List<int> destinations})
      : _destinations = destinations;

  factory _$_MapRoute.fromJson(Map<String, dynamic> json) =>
      _$$_MapRouteFromJson(json);

  @override
  final String name;
  final List<int> _destinations;
  @override
  List<int> get destinations {
    if (_destinations is EqualUnmodifiableListView) return _destinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destinations);
  }

  @override
  String toString() {
    return 'MapRoute(name: $name, destinations: $destinations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapRoute &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._destinations, _destinations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_destinations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapRouteCopyWith<_$_MapRoute> get copyWith =>
      __$$_MapRouteCopyWithImpl<_$_MapRoute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapRouteToJson(
      this,
    );
  }
}

abstract class _MapRoute implements MapRoute {
  const factory _MapRoute(
      {required final String name,
      required final List<int> destinations}) = _$_MapRoute;

  factory _MapRoute.fromJson(Map<String, dynamic> json) = _$_MapRoute.fromJson;

  @override
  String get name;
  @override
  List<int> get destinations;
  @override
  @JsonKey(ignore: true)
  _$$_MapRouteCopyWith<_$_MapRoute> get copyWith =>
      throw _privateConstructorUsedError;
}
