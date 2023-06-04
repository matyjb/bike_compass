// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compass_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompassEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(fc.CompassEvent event) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(fc.CompassEvent event)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(fc.CompassEvent event)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompassEventCopyWith<$Res> {
  factory $CompassEventCopyWith(
          CompassEvent value, $Res Function(CompassEvent) then) =
      _$CompassEventCopyWithImpl<$Res, CompassEvent>;
}

/// @nodoc
class _$CompassEventCopyWithImpl<$Res, $Val extends CompassEvent>
    implements $CompassEventCopyWith<$Res> {
  _$CompassEventCopyWithImpl(this._value, this._then);

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
    extends _$CompassEventCopyWithImpl<$Res, _$_Start>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return 'CompassEvent.start()';
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
    required TResult Function(fc.CompassEvent event) update,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(fc.CompassEvent event)? update,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(fc.CompassEvent event)? update,
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
    required TResult Function(_Update value) update,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Update value)? update,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements CompassEvent {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({fc.CompassEvent event});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$CompassEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_Update(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as fc.CompassEvent,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update({required this.event});

  @override
  final fc.CompassEvent event;

  @override
  String toString() {
    return 'CompassEvent.update(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(fc.CompassEvent event) update,
  }) {
    return update(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(fc.CompassEvent event)? update,
  }) {
    return update?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(fc.CompassEvent event)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements CompassEvent {
  const factory _Update({required final fc.CompassEvent event}) = _$_Update;

  fc.CompassEvent get event;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompassState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermission,
    required TResult Function(PermissionStatus status) denied,
    required TResult Function(fc.CompassEvent data) hasCompass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(PermissionStatus status)? denied,
    TResult? Function(fc.CompassEvent data)? hasCompass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(PermissionStatus status)? denied,
    TResult Function(fc.CompassEvent data)? hasCompass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_Denied value) denied,
    required TResult Function(_HasCompass value) hasCompass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasCompass value)? hasCompass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasCompass value)? hasCompass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompassStateCopyWith<$Res> {
  factory $CompassStateCopyWith(
          CompassState value, $Res Function(CompassState) then) =
      _$CompassStateCopyWithImpl<$Res, CompassState>;
}

/// @nodoc
class _$CompassStateCopyWithImpl<$Res, $Val extends CompassState>
    implements $CompassStateCopyWith<$Res> {
  _$CompassStateCopyWithImpl(this._value, this._then);

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
    extends _$CompassStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CompassState.initial()';
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
    required TResult Function(PermissionStatus status) denied,
    required TResult Function(fc.CompassEvent data) hasCompass,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(PermissionStatus status)? denied,
    TResult? Function(fc.CompassEvent data)? hasCompass,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(PermissionStatus status)? denied,
    TResult Function(fc.CompassEvent data)? hasCompass,
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
    required TResult Function(_HasCompass value) hasCompass,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasCompass value)? hasCompass,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasCompass value)? hasCompass,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CompassState {
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
    extends _$CompassStateCopyWithImpl<$Res, _$_RequestingPermission>
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
    return 'CompassState.requestingPermission()';
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
    required TResult Function(PermissionStatus status) denied,
    required TResult Function(fc.CompassEvent data) hasCompass,
  }) {
    return requestingPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(PermissionStatus status)? denied,
    TResult? Function(fc.CompassEvent data)? hasCompass,
  }) {
    return requestingPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(PermissionStatus status)? denied,
    TResult Function(fc.CompassEvent data)? hasCompass,
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
    required TResult Function(_HasCompass value) hasCompass,
  }) {
    return requestingPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasCompass value)? hasCompass,
  }) {
    return requestingPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasCompass value)? hasCompass,
    required TResult orElse(),
  }) {
    if (requestingPermission != null) {
      return requestingPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestingPermission implements CompassState {
  const factory _RequestingPermission() = _$_RequestingPermission;
}

/// @nodoc
abstract class _$$_DeniedCopyWith<$Res> {
  factory _$$_DeniedCopyWith(_$_Denied value, $Res Function(_$_Denied) then) =
      __$$_DeniedCopyWithImpl<$Res>;
  @useResult
  $Res call({PermissionStatus status});
}

/// @nodoc
class __$$_DeniedCopyWithImpl<$Res>
    extends _$CompassStateCopyWithImpl<$Res, _$_Denied>
    implements _$$_DeniedCopyWith<$Res> {
  __$$_DeniedCopyWithImpl(_$_Denied _value, $Res Function(_$_Denied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_Denied(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PermissionStatus,
    ));
  }
}

/// @nodoc

class _$_Denied implements _Denied {
  const _$_Denied({required this.status});

  @override
  final PermissionStatus status;

  @override
  String toString() {
    return 'CompassState.denied(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Denied &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

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
    required TResult Function(PermissionStatus status) denied,
    required TResult Function(fc.CompassEvent data) hasCompass,
  }) {
    return denied(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(PermissionStatus status)? denied,
    TResult? Function(fc.CompassEvent data)? hasCompass,
  }) {
    return denied?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(PermissionStatus status)? denied,
    TResult Function(fc.CompassEvent data)? hasCompass,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_Denied value) denied,
    required TResult Function(_HasCompass value) hasCompass,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasCompass value)? hasCompass,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasCompass value)? hasCompass,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _Denied implements CompassState {
  const factory _Denied({required final PermissionStatus status}) = _$_Denied;

  PermissionStatus get status;
  @JsonKey(ignore: true)
  _$$_DeniedCopyWith<_$_Denied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HasCompassCopyWith<$Res> {
  factory _$$_HasCompassCopyWith(
          _$_HasCompass value, $Res Function(_$_HasCompass) then) =
      __$$_HasCompassCopyWithImpl<$Res>;
  @useResult
  $Res call({fc.CompassEvent data});
}

/// @nodoc
class __$$_HasCompassCopyWithImpl<$Res>
    extends _$CompassStateCopyWithImpl<$Res, _$_HasCompass>
    implements _$$_HasCompassCopyWith<$Res> {
  __$$_HasCompassCopyWithImpl(
      _$_HasCompass _value, $Res Function(_$_HasCompass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_HasCompass(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as fc.CompassEvent,
    ));
  }
}

/// @nodoc

class _$_HasCompass implements _HasCompass {
  const _$_HasCompass({required this.data});

  @override
  final fc.CompassEvent data;

  @override
  String toString() {
    return 'CompassState.hasCompass(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HasCompass &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HasCompassCopyWith<_$_HasCompass> get copyWith =>
      __$$_HasCompassCopyWithImpl<_$_HasCompass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermission,
    required TResult Function(PermissionStatus status) denied,
    required TResult Function(fc.CompassEvent data) hasCompass,
  }) {
    return hasCompass(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(PermissionStatus status)? denied,
    TResult? Function(fc.CompassEvent data)? hasCompass,
  }) {
    return hasCompass?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(PermissionStatus status)? denied,
    TResult Function(fc.CompassEvent data)? hasCompass,
    required TResult orElse(),
  }) {
    if (hasCompass != null) {
      return hasCompass(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_Denied value) denied,
    required TResult Function(_HasCompass value) hasCompass,
  }) {
    return hasCompass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_HasCompass value)? hasCompass,
  }) {
    return hasCompass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_Denied value)? denied,
    TResult Function(_HasCompass value)? hasCompass,
    required TResult orElse(),
  }) {
    if (hasCompass != null) {
      return hasCompass(this);
    }
    return orElse();
  }
}

abstract class _HasCompass implements CompassState {
  const factory _HasCompass({required final fc.CompassEvent data}) =
      _$_HasCompass;

  fc.CompassEvent get data;
  @JsonKey(ignore: true)
  _$$_HasCompassCopyWith<_$_HasCompass> get copyWith =>
      throw _privateConstructorUsedError;
}
