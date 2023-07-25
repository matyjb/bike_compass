// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PositionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude, double bearing)
        update,
    required TResult Function() setUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude, double bearing)?
        update,
    TResult? Function()? setUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude, double bearing)? update,
    TResult Function()? setUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_SetUnknown value) setUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_SetUnknown value)? setUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_SetUnknown value)? setUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionEventCopyWith<$Res> {
  factory $PositionEventCopyWith(
          PositionEvent value, $Res Function(PositionEvent) then) =
      _$PositionEventCopyWithImpl<$Res, PositionEvent>;
}

/// @nodoc
class _$PositionEventCopyWithImpl<$Res, $Val extends PositionEvent>
    implements $PositionEventCopyWith<$Res> {
  _$PositionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude, double bearing});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$PositionEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? bearing = null,
  }) {
    return _then(_$_Update(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      bearing: null == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(
      {required this.latitude, required this.longitude, required this.bearing});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double bearing;

  @override
  String toString() {
    return 'PositionEvent.update(latitude: $latitude, longitude: $longitude, bearing: $bearing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.bearing, bearing) || other.bearing == bearing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, bearing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude, double bearing)
        update,
    required TResult Function() setUnknown,
  }) {
    return update(latitude, longitude, bearing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude, double bearing)?
        update,
    TResult? Function()? setUnknown,
  }) {
    return update?.call(latitude, longitude, bearing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude, double bearing)? update,
    TResult Function()? setUnknown,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(latitude, longitude, bearing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_SetUnknown value) setUnknown,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_SetUnknown value)? setUnknown,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_SetUnknown value)? setUnknown,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements PositionEvent {
  const factory _Update(
      {required final double latitude,
      required final double longitude,
      required final double bearing}) = _$_Update;

  double get latitude;
  double get longitude;
  double get bearing;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetUnknownCopyWith<$Res> {
  factory _$$_SetUnknownCopyWith(
          _$_SetUnknown value, $Res Function(_$_SetUnknown) then) =
      __$$_SetUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetUnknownCopyWithImpl<$Res>
    extends _$PositionEventCopyWithImpl<$Res, _$_SetUnknown>
    implements _$$_SetUnknownCopyWith<$Res> {
  __$$_SetUnknownCopyWithImpl(
      _$_SetUnknown _value, $Res Function(_$_SetUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetUnknown implements _SetUnknown {
  const _$_SetUnknown();

  @override
  String toString() {
    return 'PositionEvent.setUnknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude, double bearing)
        update,
    required TResult Function() setUnknown,
  }) {
    return setUnknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude, double bearing)?
        update,
    TResult? Function()? setUnknown,
  }) {
    return setUnknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude, double bearing)? update,
    TResult Function()? setUnknown,
    required TResult orElse(),
  }) {
    if (setUnknown != null) {
      return setUnknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_SetUnknown value) setUnknown,
  }) {
    return setUnknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_SetUnknown value)? setUnknown,
  }) {
    return setUnknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_SetUnknown value)? setUnknown,
    required TResult orElse(),
  }) {
    if (setUnknown != null) {
      return setUnknown(this);
    }
    return orElse();
  }
}

abstract class _SetUnknown implements PositionEvent {
  const factory _SetUnknown() = _$_SetUnknown;
}

/// @nodoc
mixin _$PositionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double latitude, double longitude, double bearing)
        state,
    required TResult Function(
            double lastLatitude, double lastLongitude, double lastBearing)
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double latitude, double longitude, double bearing)? state,
    TResult? Function(
            double lastLatitude, double lastLongitude, double lastBearing)?
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double latitude, double longitude, double bearing)? state,
    TResult Function(
            double lastLatitude, double lastLongitude, double lastBearing)?
        unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionStateCopyWith<$Res> {
  factory $PositionStateCopyWith(
          PositionState value, $Res Function(PositionState) then) =
      _$PositionStateCopyWithImpl<$Res, PositionState>;
}

/// @nodoc
class _$PositionStateCopyWithImpl<$Res, $Val extends PositionState>
    implements $PositionStateCopyWith<$Res> {
  _$PositionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PositionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PositionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double latitude, double longitude, double bearing)
        state,
    required TResult Function(
            double lastLatitude, double lastLongitude, double lastBearing)
        unknown,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double latitude, double longitude, double bearing)? state,
    TResult? Function(
            double lastLatitude, double lastLongitude, double lastBearing)?
        unknown,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double latitude, double longitude, double bearing)? state,
    TResult Function(
            double lastLatitude, double lastLongitude, double lastBearing)?
        unknown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Unknown value) unknown,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PositionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude, double bearing});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$PositionStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? bearing = null,
  }) {
    return _then(_$_State(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      bearing: null == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(
      {required this.latitude, required this.longitude, required this.bearing});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double bearing;

  @override
  String toString() {
    return 'PositionState.state(latitude: $latitude, longitude: $longitude, bearing: $bearing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.bearing, bearing) || other.bearing == bearing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, bearing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double latitude, double longitude, double bearing)
        state,
    required TResult Function(
            double lastLatitude, double lastLongitude, double lastBearing)
        unknown,
  }) {
    return state(latitude, longitude, bearing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double latitude, double longitude, double bearing)? state,
    TResult? Function(
            double lastLatitude, double lastLongitude, double lastBearing)?
        unknown,
  }) {
    return state?.call(latitude, longitude, bearing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double latitude, double longitude, double bearing)? state,
    TResult Function(
            double lastLatitude, double lastLongitude, double lastBearing)?
        unknown,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(latitude, longitude, bearing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Unknown value) unknown,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements PositionState {
  const factory _State(
      {required final double latitude,
      required final double longitude,
      required final double bearing}) = _$_State;

  double get latitude;
  double get longitude;
  double get bearing;
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
  @useResult
  $Res call({double lastLatitude, double lastLongitude, double lastBearing});
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$PositionStateCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastLatitude = null,
    Object? lastLongitude = null,
    Object? lastBearing = null,
  }) {
    return _then(_$_Unknown(
      lastLatitude: null == lastLatitude
          ? _value.lastLatitude
          : lastLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      lastLongitude: null == lastLongitude
          ? _value.lastLongitude
          : lastLongitude // ignore: cast_nullable_to_non_nullable
              as double,
      lastBearing: null == lastBearing
          ? _value.lastBearing
          : lastBearing // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown(
      {required this.lastLatitude,
      required this.lastLongitude,
      required this.lastBearing});

  @override
  final double lastLatitude;
  @override
  final double lastLongitude;
  @override
  final double lastBearing;

  @override
  String toString() {
    return 'PositionState.unknown(lastLatitude: $lastLatitude, lastLongitude: $lastLongitude, lastBearing: $lastBearing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unknown &&
            (identical(other.lastLatitude, lastLatitude) ||
                other.lastLatitude == lastLatitude) &&
            (identical(other.lastLongitude, lastLongitude) ||
                other.lastLongitude == lastLongitude) &&
            (identical(other.lastBearing, lastBearing) ||
                other.lastBearing == lastBearing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, lastLatitude, lastLongitude, lastBearing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      __$$_UnknownCopyWithImpl<_$_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double latitude, double longitude, double bearing)
        state,
    required TResult Function(
            double lastLatitude, double lastLongitude, double lastBearing)
        unknown,
  }) {
    return unknown(lastLatitude, lastLongitude, lastBearing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double latitude, double longitude, double bearing)? state,
    TResult? Function(
            double lastLatitude, double lastLongitude, double lastBearing)?
        unknown,
  }) {
    return unknown?.call(lastLatitude, lastLongitude, lastBearing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double latitude, double longitude, double bearing)? state,
    TResult Function(
            double lastLatitude, double lastLongitude, double lastBearing)?
        unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(lastLatitude, lastLongitude, lastBearing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements PositionState {
  const factory _Unknown(
      {required final double lastLatitude,
      required final double lastLongitude,
      required final double lastBearing}) = _$_Unknown;

  double get lastLatitude;
  double get lastLongitude;
  double get lastBearing;
  @JsonKey(ignore: true)
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}
