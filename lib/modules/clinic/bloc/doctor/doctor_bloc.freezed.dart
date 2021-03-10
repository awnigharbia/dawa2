// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DoctorEventTearOff {
  const _$DoctorEventTearOff();

  _LoadStarted loadStarted({bool isRefresh = false}) {
    return _LoadStarted(
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
const $DoctorEvent = _$DoctorEventTearOff();

/// @nodoc
mixin _$DoctorEvent {
  bool get isRefresh => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? loadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStarted value) loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStarted value)? loadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorEventCopyWith<DoctorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res> implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

  final DoctorEvent _value;
  // ignore: unused_field
  final $Res Function(DoctorEvent) _then;

  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoadStartedCopyWith<$Res>
    implements $DoctorEventCopyWith<$Res> {
  factory _$LoadStartedCopyWith(
          _LoadStarted value, $Res Function(_LoadStarted) then) =
      __$LoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({bool isRefresh});
}

/// @nodoc
class __$LoadStartedCopyWithImpl<$Res> extends _$DoctorEventCopyWithImpl<$Res>
    implements _$LoadStartedCopyWith<$Res> {
  __$LoadStartedCopyWithImpl(
      _LoadStarted _value, $Res Function(_LoadStarted) _then)
      : super(_value, (v) => _then(v as _LoadStarted));

  @override
  _LoadStarted get _value => super._value as _LoadStarted;

  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_LoadStarted(
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_LoadStarted implements _LoadStarted {
  const _$_LoadStarted({this.isRefresh = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'DoctorEvent.loadStarted(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadStarted &&
            (identical(other.isRefresh, isRefresh) ||
                const DeepCollectionEquality()
                    .equals(other.isRefresh, isRefresh)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isRefresh);

  @JsonKey(ignore: true)
  @override
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      __$LoadStartedCopyWithImpl<_LoadStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) loadStarted,
  }) {
    return loadStarted(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? loadStarted,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStarted value) loadStarted,
  }) {
    return loadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStarted value)? loadStarted,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(this);
    }
    return orElse();
  }
}

abstract class _LoadStarted implements DoctorEvent {
  const factory _LoadStarted({bool isRefresh}) = _$_LoadStarted;

  @override
  bool get isRefresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DoctorStateTearOff {
  const _$DoctorStateTearOff();

  _DoctorInitial initial() {
    return const _DoctorInitial();
  }

  DoctorLoadSuccess loadSuccess({Doctor? doctor}) {
    return DoctorLoadSuccess(
      doctor: doctor,
    );
  }

  _DoctorLoadFailure loadFailure() {
    return const _DoctorLoadFailure();
  }
}

/// @nodoc
const $DoctorState = _$DoctorStateTearOff();

/// @nodoc
mixin _$DoctorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Doctor? doctor) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Doctor? doctor)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoctorInitial value) initial,
    required TResult Function(DoctorLoadSuccess value) loadSuccess,
    required TResult Function(_DoctorLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoctorInitial value)? initial,
    TResult Function(DoctorLoadSuccess value)? loadSuccess,
    TResult Function(_DoctorLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res> implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

  final DoctorState _value;
  // ignore: unused_field
  final $Res Function(DoctorState) _then;
}

/// @nodoc
abstract class _$DoctorInitialCopyWith<$Res> {
  factory _$DoctorInitialCopyWith(
          _DoctorInitial value, $Res Function(_DoctorInitial) then) =
      __$DoctorInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoctorInitialCopyWithImpl<$Res> extends _$DoctorStateCopyWithImpl<$Res>
    implements _$DoctorInitialCopyWith<$Res> {
  __$DoctorInitialCopyWithImpl(
      _DoctorInitial _value, $Res Function(_DoctorInitial) _then)
      : super(_value, (v) => _then(v as _DoctorInitial));

  @override
  _DoctorInitial get _value => super._value as _DoctorInitial;
}

/// @nodoc
class _$_DoctorInitial implements _DoctorInitial {
  const _$_DoctorInitial();

  @override
  String toString() {
    return 'DoctorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DoctorInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Doctor? doctor) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Doctor? doctor)? loadSuccess,
    TResult Function()? loadFailure,
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
    required TResult Function(_DoctorInitial value) initial,
    required TResult Function(DoctorLoadSuccess value) loadSuccess,
    required TResult Function(_DoctorLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoctorInitial value)? initial,
    TResult Function(DoctorLoadSuccess value)? loadSuccess,
    TResult Function(_DoctorLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DoctorInitial implements DoctorState {
  const factory _DoctorInitial() = _$_DoctorInitial;
}

/// @nodoc
abstract class $DoctorLoadSuccessCopyWith<$Res> {
  factory $DoctorLoadSuccessCopyWith(
          DoctorLoadSuccess value, $Res Function(DoctorLoadSuccess) then) =
      _$DoctorLoadSuccessCopyWithImpl<$Res>;
  $Res call({Doctor? doctor});
}

/// @nodoc
class _$DoctorLoadSuccessCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res>
    implements $DoctorLoadSuccessCopyWith<$Res> {
  _$DoctorLoadSuccessCopyWithImpl(
      DoctorLoadSuccess _value, $Res Function(DoctorLoadSuccess) _then)
      : super(_value, (v) => _then(v as DoctorLoadSuccess));

  @override
  DoctorLoadSuccess get _value => super._value as DoctorLoadSuccess;

  @override
  $Res call({
    Object? doctor = freezed,
  }) {
    return _then(DoctorLoadSuccess(
      doctor: doctor == freezed
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
    ));
  }
}

/// @nodoc
class _$DoctorLoadSuccess implements DoctorLoadSuccess {
  const _$DoctorLoadSuccess({this.doctor});

  @override
  final Doctor? doctor;

  @override
  String toString() {
    return 'DoctorState.loadSuccess(doctor: $doctor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DoctorLoadSuccess &&
            (identical(other.doctor, doctor) ||
                const DeepCollectionEquality().equals(other.doctor, doctor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(doctor);

  @JsonKey(ignore: true)
  @override
  $DoctorLoadSuccessCopyWith<DoctorLoadSuccess> get copyWith =>
      _$DoctorLoadSuccessCopyWithImpl<DoctorLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Doctor? doctor) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(doctor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Doctor? doctor)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(doctor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoctorInitial value) initial,
    required TResult Function(DoctorLoadSuccess value) loadSuccess,
    required TResult Function(_DoctorLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoctorInitial value)? initial,
    TResult Function(DoctorLoadSuccess value)? loadSuccess,
    TResult Function(_DoctorLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class DoctorLoadSuccess implements DoctorState {
  const factory DoctorLoadSuccess({Doctor? doctor}) = _$DoctorLoadSuccess;

  Doctor? get doctor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorLoadSuccessCopyWith<DoctorLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DoctorLoadFailureCopyWith<$Res> {
  factory _$DoctorLoadFailureCopyWith(
          _DoctorLoadFailure value, $Res Function(_DoctorLoadFailure) then) =
      __$DoctorLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoctorLoadFailureCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res>
    implements _$DoctorLoadFailureCopyWith<$Res> {
  __$DoctorLoadFailureCopyWithImpl(
      _DoctorLoadFailure _value, $Res Function(_DoctorLoadFailure) _then)
      : super(_value, (v) => _then(v as _DoctorLoadFailure));

  @override
  _DoctorLoadFailure get _value => super._value as _DoctorLoadFailure;
}

/// @nodoc
class _$_DoctorLoadFailure implements _DoctorLoadFailure {
  const _$_DoctorLoadFailure();

  @override
  String toString() {
    return 'DoctorState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DoctorLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Doctor? doctor) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Doctor? doctor)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoctorInitial value) initial,
    required TResult Function(DoctorLoadSuccess value) loadSuccess,
    required TResult Function(_DoctorLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoctorInitial value)? initial,
    TResult Function(DoctorLoadSuccess value)? loadSuccess,
    TResult Function(_DoctorLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _DoctorLoadFailure implements DoctorState {
  const factory _DoctorLoadFailure() = _$_DoctorLoadFailure;
}
