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

/// @nodoc
mixin _$MapRoute {
  String get name => throw _privateConstructorUsedError;
  List<MapDestination> get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapRouteCopyWith<MapRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapRouteCopyWith<$Res> {
  factory $MapRouteCopyWith(MapRoute value, $Res Function(MapRoute) then) =
      _$MapRouteCopyWithImpl<$Res, MapRoute>;
  @useResult
  $Res call({String name, List<MapDestination> route});
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
    Object? route = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as List<MapDestination>,
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
  $Res call({String name, List<MapDestination> route});
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
    Object? route = null,
  }) {
    return _then(_$_MapRoute(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value._route
          : route // ignore: cast_nullable_to_non_nullable
              as List<MapDestination>,
    ));
  }
}

/// @nodoc

class _$_MapRoute implements _MapRoute {
  const _$_MapRoute(
      {required this.name, required final List<MapDestination> route})
      : _route = route;

  @override
  final String name;
  final List<MapDestination> _route;
  @override
  List<MapDestination> get route {
    if (_route is EqualUnmodifiableListView) return _route;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_route);
  }

  @override
  String toString() {
    return 'MapRoute(name: $name, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapRoute &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._route, _route));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_route));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapRouteCopyWith<_$_MapRoute> get copyWith =>
      __$$_MapRouteCopyWithImpl<_$_MapRoute>(this, _$identity);
}

abstract class _MapRoute implements MapRoute {
  const factory _MapRoute(
      {required final String name,
      required final List<MapDestination> route}) = _$_MapRoute;

  @override
  String get name;
  @override
  List<MapDestination> get route;
  @override
  @JsonKey(ignore: true)
  _$$_MapRouteCopyWith<_$_MapRoute> get copyWith =>
      throw _privateConstructorUsedError;
}
