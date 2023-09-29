// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visible_region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VisibleRegion {
  LatLng get farEast => throw _privateConstructorUsedError;
  LatLng get nearEast => throw _privateConstructorUsedError;
  LatLng get nearWest => throw _privateConstructorUsedError;
  LatLng get farWest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisibleRegionCopyWith<VisibleRegion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisibleRegionCopyWith<$Res> {
  factory $VisibleRegionCopyWith(
          VisibleRegion value, $Res Function(VisibleRegion) then) =
      _$VisibleRegionCopyWithImpl<$Res, VisibleRegion>;
  @useResult
  $Res call({LatLng farEast, LatLng nearEast, LatLng nearWest, LatLng farWest});
}

/// @nodoc
class _$VisibleRegionCopyWithImpl<$Res, $Val extends VisibleRegion>
    implements $VisibleRegionCopyWith<$Res> {
  _$VisibleRegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farEast = null,
    Object? nearEast = null,
    Object? nearWest = null,
    Object? farWest = null,
  }) {
    return _then(_value.copyWith(
      farEast: null == farEast
          ? _value.farEast
          : farEast // ignore: cast_nullable_to_non_nullable
              as LatLng,
      nearEast: null == nearEast
          ? _value.nearEast
          : nearEast // ignore: cast_nullable_to_non_nullable
              as LatLng,
      nearWest: null == nearWest
          ? _value.nearWest
          : nearWest // ignore: cast_nullable_to_non_nullable
              as LatLng,
      farWest: null == farWest
          ? _value.farWest
          : farWest // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VisibleRegionCopyWith<$Res>
    implements $VisibleRegionCopyWith<$Res> {
  factory _$$_VisibleRegionCopyWith(
          _$_VisibleRegion value, $Res Function(_$_VisibleRegion) then) =
      __$$_VisibleRegionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng farEast, LatLng nearEast, LatLng nearWest, LatLng farWest});
}

/// @nodoc
class __$$_VisibleRegionCopyWithImpl<$Res>
    extends _$VisibleRegionCopyWithImpl<$Res, _$_VisibleRegion>
    implements _$$_VisibleRegionCopyWith<$Res> {
  __$$_VisibleRegionCopyWithImpl(
      _$_VisibleRegion _value, $Res Function(_$_VisibleRegion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farEast = null,
    Object? nearEast = null,
    Object? nearWest = null,
    Object? farWest = null,
  }) {
    return _then(_$_VisibleRegion(
      farEast: null == farEast
          ? _value.farEast
          : farEast // ignore: cast_nullable_to_non_nullable
              as LatLng,
      nearEast: null == nearEast
          ? _value.nearEast
          : nearEast // ignore: cast_nullable_to_non_nullable
              as LatLng,
      nearWest: null == nearWest
          ? _value.nearWest
          : nearWest // ignore: cast_nullable_to_non_nullable
              as LatLng,
      farWest: null == farWest
          ? _value.farWest
          : farWest // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_VisibleRegion extends _VisibleRegion {
  const _$_VisibleRegion(
      {required this.farEast,
      required this.nearEast,
      required this.nearWest,
      required this.farWest})
      : super._();

  @override
  final LatLng farEast;
  @override
  final LatLng nearEast;
  @override
  final LatLng nearWest;
  @override
  final LatLng farWest;

  @override
  String toString() {
    return 'VisibleRegion(farEast: $farEast, nearEast: $nearEast, nearWest: $nearWest, farWest: $farWest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisibleRegion &&
            (identical(other.farEast, farEast) || other.farEast == farEast) &&
            (identical(other.nearEast, nearEast) ||
                other.nearEast == nearEast) &&
            (identical(other.nearWest, nearWest) ||
                other.nearWest == nearWest) &&
            (identical(other.farWest, farWest) || other.farWest == farWest));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, farEast, nearEast, nearWest, farWest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisibleRegionCopyWith<_$_VisibleRegion> get copyWith =>
      __$$_VisibleRegionCopyWithImpl<_$_VisibleRegion>(this, _$identity);
}

abstract class _VisibleRegion extends VisibleRegion {
  const factory _VisibleRegion(
      {required final LatLng farEast,
      required final LatLng nearEast,
      required final LatLng nearWest,
      required final LatLng farWest}) = _$_VisibleRegion;
  const _VisibleRegion._() : super._();

  @override
  LatLng get farEast;
  @override
  LatLng get nearEast;
  @override
  LatLng get nearWest;
  @override
  LatLng get farWest;
  @override
  @JsonKey(ignore: true)
  _$$_VisibleRegionCopyWith<_$_VisibleRegion> get copyWith =>
      throw _privateConstructorUsedError;
}
