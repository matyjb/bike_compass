// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_permission_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationPermissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PermissionStatus status) granted,
    required TResult Function(PermissionStatus? status, bool serviceEnabled)
        denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PermissionStatus status)? granted,
    TResult? Function(PermissionStatus? status, bool serviceEnabled)? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PermissionStatus status)? granted,
    TResult Function(PermissionStatus? status, bool serviceEnabled)? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_Denied value)? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPermissionStateCopyWith<$Res> {
  factory $LocationPermissionStateCopyWith(LocationPermissionState value,
          $Res Function(LocationPermissionState) then) =
      _$LocationPermissionStateCopyWithImpl<$Res, LocationPermissionState>;
}

/// @nodoc
class _$LocationPermissionStateCopyWithImpl<$Res,
        $Val extends LocationPermissionState>
    implements $LocationPermissionStateCopyWith<$Res> {
  _$LocationPermissionStateCopyWithImpl(this._value, this._then);

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
    extends _$LocationPermissionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LocationPermissionState.initial()';
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
    required TResult Function(PermissionStatus status) granted,
    required TResult Function(PermissionStatus? status, bool serviceEnabled)
        denied,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PermissionStatus status)? granted,
    TResult? Function(PermissionStatus? status, bool serviceEnabled)? denied,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PermissionStatus status)? granted,
    TResult Function(PermissionStatus? status, bool serviceEnabled)? denied,
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
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_Denied value)? denied,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationPermissionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_GrantedCopyWith<$Res> {
  factory _$$_GrantedCopyWith(
          _$_Granted value, $Res Function(_$_Granted) then) =
      __$$_GrantedCopyWithImpl<$Res>;
  @useResult
  $Res call({PermissionStatus status});
}

/// @nodoc
class __$$_GrantedCopyWithImpl<$Res>
    extends _$LocationPermissionStateCopyWithImpl<$Res, _$_Granted>
    implements _$$_GrantedCopyWith<$Res> {
  __$$_GrantedCopyWithImpl(_$_Granted _value, $Res Function(_$_Granted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_Granted(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PermissionStatus,
    ));
  }
}

/// @nodoc

class _$_Granted implements _Granted {
  const _$_Granted({required this.status});

  @override
  final PermissionStatus status;

  @override
  String toString() {
    return 'LocationPermissionState.granted(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Granted &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrantedCopyWith<_$_Granted> get copyWith =>
      __$$_GrantedCopyWithImpl<_$_Granted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PermissionStatus status) granted,
    required TResult Function(PermissionStatus? status, bool serviceEnabled)
        denied,
  }) {
    return granted(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PermissionStatus status)? granted,
    TResult? Function(PermissionStatus? status, bool serviceEnabled)? denied,
  }) {
    return granted?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PermissionStatus status)? granted,
    TResult Function(PermissionStatus? status, bool serviceEnabled)? denied,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
  }) {
    return granted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_Denied value)? denied,
  }) {
    return granted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(this);
    }
    return orElse();
  }
}

abstract class _Granted implements LocationPermissionState {
  const factory _Granted({required final PermissionStatus status}) = _$_Granted;

  PermissionStatus get status;
  @JsonKey(ignore: true)
  _$$_GrantedCopyWith<_$_Granted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeniedCopyWith<$Res> {
  factory _$$_DeniedCopyWith(_$_Denied value, $Res Function(_$_Denied) then) =
      __$$_DeniedCopyWithImpl<$Res>;
  @useResult
  $Res call({PermissionStatus? status, bool serviceEnabled});
}

/// @nodoc
class __$$_DeniedCopyWithImpl<$Res>
    extends _$LocationPermissionStateCopyWithImpl<$Res, _$_Denied>
    implements _$$_DeniedCopyWith<$Res> {
  __$$_DeniedCopyWithImpl(_$_Denied _value, $Res Function(_$_Denied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? serviceEnabled = null,
  }) {
    return _then(_$_Denied(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PermissionStatus?,
      serviceEnabled: null == serviceEnabled
          ? _value.serviceEnabled
          : serviceEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Denied implements _Denied {
  const _$_Denied({this.status, required this.serviceEnabled});

  @override
  final PermissionStatus? status;
  @override
  final bool serviceEnabled;

  @override
  String toString() {
    return 'LocationPermissionState.denied(status: $status, serviceEnabled: $serviceEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Denied &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.serviceEnabled, serviceEnabled) ||
                other.serviceEnabled == serviceEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, serviceEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeniedCopyWith<_$_Denied> get copyWith =>
      __$$_DeniedCopyWithImpl<_$_Denied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PermissionStatus status) granted,
    required TResult Function(PermissionStatus? status, bool serviceEnabled)
        denied,
  }) {
    return denied(status, serviceEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PermissionStatus status)? granted,
    TResult? Function(PermissionStatus? status, bool serviceEnabled)? denied,
  }) {
    return denied?.call(status, serviceEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PermissionStatus status)? granted,
    TResult Function(PermissionStatus? status, bool serviceEnabled)? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(status, serviceEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_Denied value)? denied,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _Denied implements LocationPermissionState {
  const factory _Denied(
      {final PermissionStatus? status,
      required final bool serviceEnabled}) = _$_Denied;

  PermissionStatus? get status;
  bool get serviceEnabled;
  @JsonKey(ignore: true)
  _$$_DeniedCopyWith<_$_Denied> get copyWith =>
      throw _privateConstructorUsedError;
}
