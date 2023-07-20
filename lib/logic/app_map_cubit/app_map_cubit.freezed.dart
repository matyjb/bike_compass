// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppMapState {
  bool get followMode => throw _privateConstructorUsedError;
  bool get expandedMap => throw _privateConstructorUsedError;
  int? get selectedRouteIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppMapStateCopyWith<AppMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMapStateCopyWith<$Res> {
  factory $AppMapStateCopyWith(
          AppMapState value, $Res Function(AppMapState) then) =
      _$AppMapStateCopyWithImpl<$Res, AppMapState>;
  @useResult
  $Res call({bool followMode, bool expandedMap, int? selectedRouteIndex});
}

/// @nodoc
class _$AppMapStateCopyWithImpl<$Res, $Val extends AppMapState>
    implements $AppMapStateCopyWith<$Res> {
  _$AppMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followMode = null,
    Object? expandedMap = null,
    Object? selectedRouteIndex = freezed,
  }) {
    return _then(_value.copyWith(
      followMode: null == followMode
          ? _value.followMode
          : followMode // ignore: cast_nullable_to_non_nullable
              as bool,
      expandedMap: null == expandedMap
          ? _value.expandedMap
          : expandedMap // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedRouteIndex: freezed == selectedRouteIndex
          ? _value.selectedRouteIndex
          : selectedRouteIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppMapStateCopyWith<$Res>
    implements $AppMapStateCopyWith<$Res> {
  factory _$$_AppMapStateCopyWith(
          _$_AppMapState value, $Res Function(_$_AppMapState) then) =
      __$$_AppMapStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool followMode, bool expandedMap, int? selectedRouteIndex});
}

/// @nodoc
class __$$_AppMapStateCopyWithImpl<$Res>
    extends _$AppMapStateCopyWithImpl<$Res, _$_AppMapState>
    implements _$$_AppMapStateCopyWith<$Res> {
  __$$_AppMapStateCopyWithImpl(
      _$_AppMapState _value, $Res Function(_$_AppMapState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followMode = null,
    Object? expandedMap = null,
    Object? selectedRouteIndex = freezed,
  }) {
    return _then(_$_AppMapState(
      followMode: null == followMode
          ? _value.followMode
          : followMode // ignore: cast_nullable_to_non_nullable
              as bool,
      expandedMap: null == expandedMap
          ? _value.expandedMap
          : expandedMap // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedRouteIndex: freezed == selectedRouteIndex
          ? _value.selectedRouteIndex
          : selectedRouteIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_AppMapState implements _AppMapState {
  const _$_AppMapState(
      {this.followMode = true,
      this.expandedMap = true,
      this.selectedRouteIndex});

  @override
  @JsonKey()
  final bool followMode;
  @override
  @JsonKey()
  final bool expandedMap;
  @override
  final int? selectedRouteIndex;

  @override
  String toString() {
    return 'AppMapState(followMode: $followMode, expandedMap: $expandedMap, selectedRouteIndex: $selectedRouteIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppMapState &&
            (identical(other.followMode, followMode) ||
                other.followMode == followMode) &&
            (identical(other.expandedMap, expandedMap) ||
                other.expandedMap == expandedMap) &&
            (identical(other.selectedRouteIndex, selectedRouteIndex) ||
                other.selectedRouteIndex == selectedRouteIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, followMode, expandedMap, selectedRouteIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppMapStateCopyWith<_$_AppMapState> get copyWith =>
      __$$_AppMapStateCopyWithImpl<_$_AppMapState>(this, _$identity);
}

abstract class _AppMapState implements AppMapState {
  const factory _AppMapState(
      {final bool followMode,
      final bool expandedMap,
      final int? selectedRouteIndex}) = _$_AppMapState;

  @override
  bool get followMode;
  @override
  bool get expandedMap;
  @override
  int? get selectedRouteIndex;
  @override
  @JsonKey(ignore: true)
  _$$_AppMapStateCopyWith<_$_AppMapState> get copyWith =>
      throw _privateConstructorUsedError;
}
