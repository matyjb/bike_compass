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
    required TResult Function() start,
    required TResult Function(LocationData data) newLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(LocationData data)? newLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(LocationData data)? newLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_NewLocation value) newLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_NewLocation value)? newLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_NewLocation value)? newLocation,
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
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_Start>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return 'LocationEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(LocationData data) newLocation,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(LocationData data)? newLocation,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(LocationData data)? newLocation,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_NewLocation value) newLocation,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_NewLocation value)? newLocation,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_NewLocation value)? newLocation,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements LocationEvent {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$$_NewLocationCopyWith<$Res> {
  factory _$$_NewLocationCopyWith(
          _$_NewLocation value, $Res Function(_$_NewLocation) then) =
      __$$_NewLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationData data});
}

/// @nodoc
class __$$_NewLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_NewLocation>
    implements _$$_NewLocationCopyWith<$Res> {
  __$$_NewLocationCopyWithImpl(
      _$_NewLocation _value, $Res Function(_$_NewLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_NewLocation(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }
}

/// @nodoc

class _$_NewLocation implements _NewLocation {
  const _$_NewLocation({required this.data});

  @override
  final LocationData data;

  @override
  String toString() {
    return 'LocationEvent.newLocation(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewLocation &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewLocationCopyWith<_$_NewLocation> get copyWith =>
      __$$_NewLocationCopyWithImpl<_$_NewLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(LocationData data) newLocation,
  }) {
    return newLocation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(LocationData data)? newLocation,
  }) {
    return newLocation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(LocationData data)? newLocation,
    required TResult orElse(),
  }) {
    if (newLocation != null) {
      return newLocation(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_NewLocation value) newLocation,
  }) {
    return newLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_NewLocation value)? newLocation,
  }) {
    return newLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_NewLocation value)? newLocation,
    required TResult orElse(),
  }) {
    if (newLocation != null) {
      return newLocation(this);
    }
    return orElse();
  }
}

abstract class _NewLocation implements LocationEvent {
  const factory _NewLocation({required final LocationData data}) =
      _$_NewLocation;

  LocationData get data;
  @JsonKey(ignore: true)
  _$$_NewLocationCopyWith<_$_NewLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermission,
    required TResult Function(bool hasService, PermissionStatus? status) denied,
    required TResult Function(LocationData data) hasLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(bool hasService, PermissionStatus? status)? denied,
    TResult? Function(LocationData data)? hasLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(bool hasService, PermissionStatus? status)? denied,
    TResult Function(LocationData data)? hasLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_Denied value) denied,
    required TResult Function(_HasLocation value) hasLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasLocation value)? hasLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasLocation value)? hasLocation,
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
    required TResult Function() requestingPermission,
    required TResult Function(bool hasService, PermissionStatus? status) denied,
    required TResult Function(LocationData data) hasLocation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(bool hasService, PermissionStatus? status)? denied,
    TResult? Function(LocationData data)? hasLocation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(bool hasService, PermissionStatus? status)? denied,
    TResult Function(LocationData data)? hasLocation,
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
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_Denied value) denied,
    required TResult Function(_HasLocation value) hasLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasLocation value)? hasLocation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasLocation value)? hasLocation,
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
abstract class _$$_RequestingPermissionCopyWith<$Res> {
  factory _$$_RequestingPermissionCopyWith(_$_RequestingPermission value,
          $Res Function(_$_RequestingPermission) then) =
      __$$_RequestingPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestingPermissionCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_RequestingPermission>
    implements _$$_RequestingPermissionCopyWith<$Res> {
  __$$_RequestingPermissionCopyWithImpl(_$_RequestingPermission _value,
      $Res Function(_$_RequestingPermission) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestingPermission implements _RequestingPermission {
  const _$_RequestingPermission();

  @override
  String toString() {
    return 'LocationState.requestingPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestingPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermission,
    required TResult Function(bool hasService, PermissionStatus? status) denied,
    required TResult Function(LocationData data) hasLocation,
  }) {
    return requestingPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(bool hasService, PermissionStatus? status)? denied,
    TResult? Function(LocationData data)? hasLocation,
  }) {
    return requestingPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(bool hasService, PermissionStatus? status)? denied,
    TResult Function(LocationData data)? hasLocation,
    required TResult orElse(),
  }) {
    if (requestingPermission != null) {
      return requestingPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_Denied value) denied,
    required TResult Function(_HasLocation value) hasLocation,
  }) {
    return requestingPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasLocation value)? hasLocation,
  }) {
    return requestingPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasLocation value)? hasLocation,
    required TResult orElse(),
  }) {
    if (requestingPermission != null) {
      return requestingPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestingPermission implements LocationState {
  const factory _RequestingPermission() = _$_RequestingPermission;
}

/// @nodoc
abstract class _$$_DeniedCopyWith<$Res> {
  factory _$$_DeniedCopyWith(_$_Denied value, $Res Function(_$_Denied) then) =
      __$$_DeniedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasService, PermissionStatus? status});
}

/// @nodoc
class __$$_DeniedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_Denied>
    implements _$$_DeniedCopyWith<$Res> {
  __$$_DeniedCopyWithImpl(_$_Denied _value, $Res Function(_$_Denied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasService = null,
    Object? status = freezed,
  }) {
    return _then(_$_Denied(
      hasService: null == hasService
          ? _value.hasService
          : hasService // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PermissionStatus?,
    ));
  }
}

/// @nodoc

class _$_Denied implements _Denied {
  const _$_Denied({required this.hasService, this.status});

  @override
  final bool hasService;
  @override
  final PermissionStatus? status;

  @override
  String toString() {
    return 'LocationState.denied(hasService: $hasService, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Denied &&
            (identical(other.hasService, hasService) ||
                other.hasService == hasService) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasService, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeniedCopyWith<_$_Denied> get copyWith =>
      __$$_DeniedCopyWithImpl<_$_Denied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermission,
    required TResult Function(bool hasService, PermissionStatus? status) denied,
    required TResult Function(LocationData data) hasLocation,
  }) {
    return denied(hasService, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(bool hasService, PermissionStatus? status)? denied,
    TResult? Function(LocationData data)? hasLocation,
  }) {
    return denied?.call(hasService, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(bool hasService, PermissionStatus? status)? denied,
    TResult Function(LocationData data)? hasLocation,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(hasService, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_Denied value) denied,
    required TResult Function(_HasLocation value) hasLocation,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasLocation value)? hasLocation,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasLocation value)? hasLocation,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _Denied implements LocationState {
  const factory _Denied(
      {required final bool hasService,
      final PermissionStatus? status}) = _$_Denied;

  bool get hasService;
  PermissionStatus? get status;
  @JsonKey(ignore: true)
  _$$_DeniedCopyWith<_$_Denied> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() requestingPermission,
    required TResult Function(bool hasService, PermissionStatus? status) denied,
    required TResult Function(LocationData data) hasLocation,
  }) {
    return hasLocation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(bool hasService, PermissionStatus? status)? denied,
    TResult? Function(LocationData data)? hasLocation,
  }) {
    return hasLocation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(bool hasService, PermissionStatus? status)? denied,
    TResult Function(LocationData data)? hasLocation,
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
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_Denied value) denied,
    required TResult Function(_HasLocation value) hasLocation,
  }) {
    return hasLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasLocation value)? hasLocation,
  }) {
    return hasLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasLocation value)? hasLocation,
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
