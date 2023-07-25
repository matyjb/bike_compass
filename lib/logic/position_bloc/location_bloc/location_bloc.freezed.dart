// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationData data) locationChange,
    required TResult Function() noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationData data)? locationChange,
    TResult? Function()? noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationData data)? locationChange,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChange value) locationChange,
    required TResult Function(_NoLocation value) noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationChange value)? locationChange,
    TResult? Function(_NoLocation value)? noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChange value)? locationChange,
    TResult Function(_NoLocation value)? noLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LocationChangeCopyWith<$Res> {
  factory _$$_LocationChangeCopyWith(
          _$_LocationChange value, $Res Function(_$_LocationChange) then) =
      __$$_LocationChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationData data});
}

/// @nodoc
class __$$_LocationChangeCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_LocationChange>
    implements _$$_LocationChangeCopyWith<$Res> {
  __$$_LocationChangeCopyWithImpl(
      _$_LocationChange _value, $Res Function(_$_LocationChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LocationChange(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }
}

/// @nodoc

class _$_LocationChange implements _LocationChange {
  const _$_LocationChange({required this.data});

  @override
  final LocationData data;

  @override
  String toString() {
    return 'LocationEvent.locationChange(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationChange &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationChangeCopyWith<_$_LocationChange> get copyWith =>
      __$$_LocationChangeCopyWithImpl<_$_LocationChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationData data) locationChange,
    required TResult Function() noLocation,
  }) {
    return locationChange(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationData data)? locationChange,
    TResult? Function()? noLocation,
  }) {
    return locationChange?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationData data)? locationChange,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) {
    if (locationChange != null) {
      return locationChange(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChange value) locationChange,
    required TResult Function(_NoLocation value) noLocation,
  }) {
    return locationChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationChange value)? locationChange,
    TResult? Function(_NoLocation value)? noLocation,
  }) {
    return locationChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChange value)? locationChange,
    TResult Function(_NoLocation value)? noLocation,
    required TResult orElse(),
  }) {
    if (locationChange != null) {
      return locationChange(this);
    }
    return orElse();
  }
}

abstract class _LocationChange implements LocationEvent {
  const factory _LocationChange({required final LocationData data}) =
      _$_LocationChange;

  LocationData get data;
  @JsonKey(ignore: true)
  _$$_LocationChangeCopyWith<_$_LocationChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoLocationCopyWith<$Res> {
  factory _$$_NoLocationCopyWith(
          _$_NoLocation value, $Res Function(_$_NoLocation) then) =
      __$$_NoLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_NoLocation>
    implements _$$_NoLocationCopyWith<$Res> {
  __$$_NoLocationCopyWithImpl(
      _$_NoLocation _value, $Res Function(_$_NoLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoLocation implements _NoLocation {
  const _$_NoLocation();

  @override
  String toString() {
    return 'LocationEvent.noLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationData data) locationChange,
    required TResult Function() noLocation,
  }) {
    return noLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationData data)? locationChange,
    TResult? Function()? noLocation,
  }) {
    return noLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationData data)? locationChange,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) {
    if (noLocation != null) {
      return noLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChange value) locationChange,
    required TResult Function(_NoLocation value) noLocation,
  }) {
    return noLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationChange value)? locationChange,
    TResult? Function(_NoLocation value)? noLocation,
  }) {
    return noLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChange value)? locationChange,
    TResult Function(_NoLocation value)? noLocation,
    required TResult orElse(),
  }) {
    if (noLocation != null) {
      return noLocation(this);
    }
    return orElse();
  }
}

abstract class _NoLocation implements LocationEvent {
  const factory _NoLocation() = _$_NoLocation;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationData data) hasLocation,
    required TResult Function() noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationData data)? hasLocation,
    TResult? Function()? noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationData data)? hasLocation,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasLocation value) hasLocation,
    required TResult Function(_NoLocationState value) noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasLocation value)? hasLocation,
    TResult? Function(_NoLocationState value)? noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasLocation value)? hasLocation,
    TResult Function(_NoLocationState value)? noLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

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
    extends _$LocationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LocationState.initial()';
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
    required TResult Function(LocationData data) hasLocation,
    required TResult Function() noLocation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationData data)? hasLocation,
    TResult? Function()? noLocation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationData data)? hasLocation,
    TResult Function()? noLocation,
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
    required TResult Function(_HasLocation value) hasLocation,
    required TResult Function(_NoLocationState value) noLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasLocation value)? hasLocation,
    TResult? Function(_NoLocationState value)? noLocation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasLocation value)? hasLocation,
    TResult Function(_NoLocationState value)? noLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_HasLocationCopyWith<$Res> {
  factory _$$_HasLocationCopyWith(
          _$_HasLocation value, $Res Function(_$_HasLocation) then) =
      __$$_HasLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationData data});
}

/// @nodoc
class __$$_HasLocationCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_HasLocation>
    implements _$$_HasLocationCopyWith<$Res> {
  __$$_HasLocationCopyWithImpl(
      _$_HasLocation _value, $Res Function(_$_HasLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_HasLocation(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }
}

/// @nodoc

class _$_HasLocation implements _HasLocation {
  const _$_HasLocation({required this.data});

  @override
  final LocationData data;

  @override
  String toString() {
    return 'LocationState.hasLocation(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HasLocation &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HasLocationCopyWith<_$_HasLocation> get copyWith =>
      __$$_HasLocationCopyWithImpl<_$_HasLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationData data) hasLocation,
    required TResult Function() noLocation,
  }) {
    return hasLocation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationData data)? hasLocation,
    TResult? Function()? noLocation,
  }) {
    return hasLocation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationData data)? hasLocation,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) {
    if (hasLocation != null) {
      return hasLocation(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasLocation value) hasLocation,
    required TResult Function(_NoLocationState value) noLocation,
  }) {
    return hasLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasLocation value)? hasLocation,
    TResult? Function(_NoLocationState value)? noLocation,
  }) {
    return hasLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasLocation value)? hasLocation,
    TResult Function(_NoLocationState value)? noLocation,
    required TResult orElse(),
  }) {
    if (hasLocation != null) {
      return hasLocation(this);
    }
    return orElse();
  }
}

abstract class _HasLocation implements LocationState {
  const factory _HasLocation({required final LocationData data}) =
      _$_HasLocation;

  LocationData get data;
  @JsonKey(ignore: true)
  _$$_HasLocationCopyWith<_$_HasLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoLocationStateCopyWith<$Res> {
  factory _$$_NoLocationStateCopyWith(
          _$_NoLocationState value, $Res Function(_$_NoLocationState) then) =
      __$$_NoLocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoLocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_NoLocationState>
    implements _$$_NoLocationStateCopyWith<$Res> {
  __$$_NoLocationStateCopyWithImpl(
      _$_NoLocationState _value, $Res Function(_$_NoLocationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoLocationState implements _NoLocationState {
  const _$_NoLocationState();

  @override
  String toString() {
    return 'LocationState.noLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoLocationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationData data) hasLocation,
    required TResult Function() noLocation,
  }) {
    return noLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationData data)? hasLocation,
    TResult? Function()? noLocation,
  }) {
    return noLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationData data)? hasLocation,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) {
    if (noLocation != null) {
      return noLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasLocation value) hasLocation,
    required TResult Function(_NoLocationState value) noLocation,
  }) {
    return noLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasLocation value)? hasLocation,
    TResult? Function(_NoLocationState value)? noLocation,
  }) {
    return noLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasLocation value)? hasLocation,
    TResult Function(_NoLocationState value)? noLocation,
    required TResult orElse(),
  }) {
    if (noLocation != null) {
      return noLocation(this);
    }
    return orElse();
  }
}

abstract class _NoLocationState implements LocationState {
  const factory _NoLocationState() = _$_NoLocationState;
}
