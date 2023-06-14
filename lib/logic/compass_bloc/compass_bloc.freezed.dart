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
  fc.CompassEvent? get event => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(fc.CompassEvent? event) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(fc.CompassEvent? event)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(fc.CompassEvent? event)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompassEventCopyWith<CompassEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompassEventCopyWith<$Res> {
  factory $CompassEventCopyWith(
          CompassEvent value, $Res Function(CompassEvent) then) =
      _$CompassEventCopyWithImpl<$Res, CompassEvent>;
  @useResult
  $Res call({fc.CompassEvent? event});
}

/// @nodoc
class _$CompassEventCopyWithImpl<$Res, $Val extends CompassEvent>
    implements $CompassEventCopyWith<$Res> {
  _$CompassEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as fc.CompassEvent?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> implements $CompassEventCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({fc.CompassEvent? event});
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
    Object? event = freezed,
  }) {
    return _then(_$_Update(
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as fc.CompassEvent?,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update({this.event});

  @override
  final fc.CompassEvent? event;

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
    required TResult Function(fc.CompassEvent? event) update,
  }) {
    return update(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(fc.CompassEvent? event)? update,
  }) {
    return update?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(fc.CompassEvent? event)? update,
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
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory _Update({final fc.CompassEvent? event}) = _$_Update;

  @override
  fc.CompassEvent? get event;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompassState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(fc.CompassEvent data) hasState,
    required TResult Function() noState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(fc.CompassEvent data)? hasState,
    TResult? Function()? noState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(fc.CompassEvent data)? hasState,
    TResult Function()? noState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasCompass value) hasState,
    required TResult Function(_NoState value) noState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasCompass value)? hasState,
    TResult? Function(_NoState value)? noState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasCompass value)? hasState,
    TResult Function(_NoState value)? noState,
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
    required TResult Function(fc.CompassEvent data) hasState,
    required TResult Function() noState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(fc.CompassEvent data)? hasState,
    TResult? Function()? noState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(fc.CompassEvent data)? hasState,
    TResult Function()? noState,
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
    required TResult Function(_HasCompass value) hasState,
    required TResult Function(_NoState value) noState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasCompass value)? hasState,
    TResult? Function(_NoState value)? noState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasCompass value)? hasState,
    TResult Function(_NoState value)? noState,
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
    return 'CompassState.hasState(data: $data)';
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
    required TResult Function(fc.CompassEvent data) hasState,
    required TResult Function() noState,
  }) {
    return hasState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(fc.CompassEvent data)? hasState,
    TResult? Function()? noState,
  }) {
    return hasState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(fc.CompassEvent data)? hasState,
    TResult Function()? noState,
    required TResult orElse(),
  }) {
    if (hasState != null) {
      return hasState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasCompass value) hasState,
    required TResult Function(_NoState value) noState,
  }) {
    return hasState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasCompass value)? hasState,
    TResult? Function(_NoState value)? noState,
  }) {
    return hasState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasCompass value)? hasState,
    TResult Function(_NoState value)? noState,
    required TResult orElse(),
  }) {
    if (hasState != null) {
      return hasState(this);
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

/// @nodoc
abstract class _$$_NoStateCopyWith<$Res> {
  factory _$$_NoStateCopyWith(
          _$_NoState value, $Res Function(_$_NoState) then) =
      __$$_NoStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoStateCopyWithImpl<$Res>
    extends _$CompassStateCopyWithImpl<$Res, _$_NoState>
    implements _$$_NoStateCopyWith<$Res> {
  __$$_NoStateCopyWithImpl(_$_NoState _value, $Res Function(_$_NoState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoState implements _NoState {
  const _$_NoState();

  @override
  String toString() {
    return 'CompassState.noState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(fc.CompassEvent data) hasState,
    required TResult Function() noState,
  }) {
    return noState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(fc.CompassEvent data)? hasState,
    TResult? Function()? noState,
  }) {
    return noState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(fc.CompassEvent data)? hasState,
    TResult Function()? noState,
    required TResult orElse(),
  }) {
    if (noState != null) {
      return noState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasCompass value) hasState,
    required TResult Function(_NoState value) noState,
  }) {
    return noState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasCompass value)? hasState,
    TResult? Function(_NoState value)? noState,
  }) {
    return noState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasCompass value)? hasState,
    TResult Function(_NoState value)? noState,
    required TResult orElse(),
  }) {
    if (noState != null) {
      return noState(this);
    }
    return orElse();
  }
}

abstract class _NoState implements CompassState {
  const factory _NoState() = _$_NoState;
}
