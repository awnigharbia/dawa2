// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'nearby_clinic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NearbyclinicEventTearOff {
  const _$NearbyclinicEventTearOff();

  _NearbyClinicInitialLoadStarted initialLoadStarted() {
    return const _NearbyClinicInitialLoadStarted();
  }

  _NearbyClinicLoadStarted loadStarted({bool isRefresh = false}) {
    return _NearbyClinicLoadStarted(
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
const $NearbyclinicEvent = _$NearbyclinicEventTearOff();

/// @nodoc
mixin _$NearbyclinicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(bool isRefresh) loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(bool isRefresh)? loadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NearbyClinicInitialLoadStarted value)
        initialLoadStarted,
    required TResult Function(_NearbyClinicLoadStarted value) loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NearbyClinicInitialLoadStarted value)? initialLoadStarted,
    TResult Function(_NearbyClinicLoadStarted value)? loadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyclinicEventCopyWith<$Res> {
  factory $NearbyclinicEventCopyWith(
          NearbyclinicEvent value, $Res Function(NearbyclinicEvent) then) =
      _$NearbyclinicEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NearbyclinicEventCopyWithImpl<$Res>
    implements $NearbyclinicEventCopyWith<$Res> {
  _$NearbyclinicEventCopyWithImpl(this._value, this._then);

  final NearbyclinicEvent _value;
  // ignore: unused_field
  final $Res Function(NearbyclinicEvent) _then;
}

/// @nodoc
abstract class _$NearbyClinicInitialLoadStartedCopyWith<$Res> {
  factory _$NearbyClinicInitialLoadStartedCopyWith(
          _NearbyClinicInitialLoadStarted value,
          $Res Function(_NearbyClinicInitialLoadStarted) then) =
      __$NearbyClinicInitialLoadStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NearbyClinicInitialLoadStartedCopyWithImpl<$Res>
    extends _$NearbyclinicEventCopyWithImpl<$Res>
    implements _$NearbyClinicInitialLoadStartedCopyWith<$Res> {
  __$NearbyClinicInitialLoadStartedCopyWithImpl(
      _NearbyClinicInitialLoadStarted _value,
      $Res Function(_NearbyClinicInitialLoadStarted) _then)
      : super(_value, (v) => _then(v as _NearbyClinicInitialLoadStarted));

  @override
  _NearbyClinicInitialLoadStarted get _value =>
      super._value as _NearbyClinicInitialLoadStarted;
}

/// @nodoc
class _$_NearbyClinicInitialLoadStarted
    implements _NearbyClinicInitialLoadStarted {
  const _$_NearbyClinicInitialLoadStarted();

  @override
  String toString() {
    return 'NearbyclinicEvent.initialLoadStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NearbyClinicInitialLoadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(bool isRefresh) loadStarted,
  }) {
    return initialLoadStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(bool isRefresh)? loadStarted,
    required TResult orElse(),
  }) {
    if (initialLoadStarted != null) {
      return initialLoadStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NearbyClinicInitialLoadStarted value)
        initialLoadStarted,
    required TResult Function(_NearbyClinicLoadStarted value) loadStarted,
  }) {
    return initialLoadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NearbyClinicInitialLoadStarted value)? initialLoadStarted,
    TResult Function(_NearbyClinicLoadStarted value)? loadStarted,
    required TResult orElse(),
  }) {
    if (initialLoadStarted != null) {
      return initialLoadStarted(this);
    }
    return orElse();
  }
}

abstract class _NearbyClinicInitialLoadStarted implements NearbyclinicEvent {
  const factory _NearbyClinicInitialLoadStarted() =
      _$_NearbyClinicInitialLoadStarted;
}

/// @nodoc
abstract class _$NearbyClinicLoadStartedCopyWith<$Res> {
  factory _$NearbyClinicLoadStartedCopyWith(_NearbyClinicLoadStarted value,
          $Res Function(_NearbyClinicLoadStarted) then) =
      __$NearbyClinicLoadStartedCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class __$NearbyClinicLoadStartedCopyWithImpl<$Res>
    extends _$NearbyclinicEventCopyWithImpl<$Res>
    implements _$NearbyClinicLoadStartedCopyWith<$Res> {
  __$NearbyClinicLoadStartedCopyWithImpl(_NearbyClinicLoadStarted _value,
      $Res Function(_NearbyClinicLoadStarted) _then)
      : super(_value, (v) => _then(v as _NearbyClinicLoadStarted));

  @override
  _NearbyClinicLoadStarted get _value =>
      super._value as _NearbyClinicLoadStarted;

  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_NearbyClinicLoadStarted(
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_NearbyClinicLoadStarted implements _NearbyClinicLoadStarted {
  const _$_NearbyClinicLoadStarted({this.isRefresh = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'NearbyclinicEvent.loadStarted(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NearbyClinicLoadStarted &&
            (identical(other.isRefresh, isRefresh) ||
                const DeepCollectionEquality()
                    .equals(other.isRefresh, isRefresh)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isRefresh);

  @JsonKey(ignore: true)
  @override
  _$NearbyClinicLoadStartedCopyWith<_NearbyClinicLoadStarted> get copyWith =>
      __$NearbyClinicLoadStartedCopyWithImpl<_NearbyClinicLoadStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(bool isRefresh) loadStarted,
  }) {
    return loadStarted(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
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
    required TResult Function(_NearbyClinicInitialLoadStarted value)
        initialLoadStarted,
    required TResult Function(_NearbyClinicLoadStarted value) loadStarted,
  }) {
    return loadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NearbyClinicInitialLoadStarted value)? initialLoadStarted,
    TResult Function(_NearbyClinicLoadStarted value)? loadStarted,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(this);
    }
    return orElse();
  }
}

abstract class _NearbyClinicLoadStarted implements NearbyclinicEvent {
  const factory _NearbyClinicLoadStarted({bool isRefresh}) =
      _$_NearbyClinicLoadStarted;

  bool get isRefresh => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NearbyClinicLoadStartedCopyWith<_NearbyClinicLoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NearbyclinicStateTearOff {
  const _$NearbyclinicStateTearOff();

  _NearbyClinicInitial initial() {
    return const _NearbyClinicInitial();
  }

  _NearbyClinicLoadSuccess loadSuccess({BuiltList<Clinic>? clinics}) {
    return _NearbyClinicLoadSuccess(
      clinics: clinics,
    );
  }

  _NearbyClinicLoadFailure loadFailure() {
    return const _NearbyClinicLoadFailure();
  }
}

/// @nodoc
const $NearbyclinicState = _$NearbyclinicStateTearOff();

/// @nodoc
mixin _$NearbyclinicState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Clinic>? clinics) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Clinic>? clinics)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NearbyClinicInitial value) initial,
    required TResult Function(_NearbyClinicLoadSuccess value) loadSuccess,
    required TResult Function(_NearbyClinicLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NearbyClinicInitial value)? initial,
    TResult Function(_NearbyClinicLoadSuccess value)? loadSuccess,
    TResult Function(_NearbyClinicLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyclinicStateCopyWith<$Res> {
  factory $NearbyclinicStateCopyWith(
          NearbyclinicState value, $Res Function(NearbyclinicState) then) =
      _$NearbyclinicStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NearbyclinicStateCopyWithImpl<$Res>
    implements $NearbyclinicStateCopyWith<$Res> {
  _$NearbyclinicStateCopyWithImpl(this._value, this._then);

  final NearbyclinicState _value;
  // ignore: unused_field
  final $Res Function(NearbyclinicState) _then;
}

/// @nodoc
abstract class _$NearbyClinicInitialCopyWith<$Res> {
  factory _$NearbyClinicInitialCopyWith(_NearbyClinicInitial value,
          $Res Function(_NearbyClinicInitial) then) =
      __$NearbyClinicInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$NearbyClinicInitialCopyWithImpl<$Res>
    extends _$NearbyclinicStateCopyWithImpl<$Res>
    implements _$NearbyClinicInitialCopyWith<$Res> {
  __$NearbyClinicInitialCopyWithImpl(
      _NearbyClinicInitial _value, $Res Function(_NearbyClinicInitial) _then)
      : super(_value, (v) => _then(v as _NearbyClinicInitial));

  @override
  _NearbyClinicInitial get _value => super._value as _NearbyClinicInitial;
}

/// @nodoc
class _$_NearbyClinicInitial implements _NearbyClinicInitial {
  const _$_NearbyClinicInitial();

  @override
  String toString() {
    return 'NearbyclinicState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NearbyClinicInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Clinic>? clinics) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Clinic>? clinics)? loadSuccess,
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
    required TResult Function(_NearbyClinicInitial value) initial,
    required TResult Function(_NearbyClinicLoadSuccess value) loadSuccess,
    required TResult Function(_NearbyClinicLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NearbyClinicInitial value)? initial,
    TResult Function(_NearbyClinicLoadSuccess value)? loadSuccess,
    TResult Function(_NearbyClinicLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _NearbyClinicInitial implements NearbyclinicState {
  const factory _NearbyClinicInitial() = _$_NearbyClinicInitial;
}

/// @nodoc
abstract class _$NearbyClinicLoadSuccessCopyWith<$Res> {
  factory _$NearbyClinicLoadSuccessCopyWith(_NearbyClinicLoadSuccess value,
          $Res Function(_NearbyClinicLoadSuccess) then) =
      __$NearbyClinicLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Clinic>? clinics});
}

/// @nodoc
class __$NearbyClinicLoadSuccessCopyWithImpl<$Res>
    extends _$NearbyclinicStateCopyWithImpl<$Res>
    implements _$NearbyClinicLoadSuccessCopyWith<$Res> {
  __$NearbyClinicLoadSuccessCopyWithImpl(_NearbyClinicLoadSuccess _value,
      $Res Function(_NearbyClinicLoadSuccess) _then)
      : super(_value, (v) => _then(v as _NearbyClinicLoadSuccess));

  @override
  _NearbyClinicLoadSuccess get _value =>
      super._value as _NearbyClinicLoadSuccess;

  @override
  $Res call({
    Object? clinics = freezed,
  }) {
    return _then(_NearbyClinicLoadSuccess(
      clinics: clinics == freezed
          ? _value.clinics
          : clinics // ignore: cast_nullable_to_non_nullable
              as BuiltList<Clinic>?,
    ));
  }
}

/// @nodoc
class _$_NearbyClinicLoadSuccess implements _NearbyClinicLoadSuccess {
  const _$_NearbyClinicLoadSuccess({this.clinics});

  @override
  final BuiltList<Clinic>? clinics;

  @override
  String toString() {
    return 'NearbyclinicState.loadSuccess(clinics: $clinics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NearbyClinicLoadSuccess &&
            (identical(other.clinics, clinics) ||
                const DeepCollectionEquality().equals(other.clinics, clinics)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(clinics);

  @JsonKey(ignore: true)
  @override
  _$NearbyClinicLoadSuccessCopyWith<_NearbyClinicLoadSuccess> get copyWith =>
      __$NearbyClinicLoadSuccessCopyWithImpl<_NearbyClinicLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Clinic>? clinics) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(clinics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Clinic>? clinics)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(clinics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NearbyClinicInitial value) initial,
    required TResult Function(_NearbyClinicLoadSuccess value) loadSuccess,
    required TResult Function(_NearbyClinicLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NearbyClinicInitial value)? initial,
    TResult Function(_NearbyClinicLoadSuccess value)? loadSuccess,
    TResult Function(_NearbyClinicLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _NearbyClinicLoadSuccess implements NearbyclinicState {
  const factory _NearbyClinicLoadSuccess({BuiltList<Clinic>? clinics}) =
      _$_NearbyClinicLoadSuccess;

  BuiltList<Clinic>? get clinics => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NearbyClinicLoadSuccessCopyWith<_NearbyClinicLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NearbyClinicLoadFailureCopyWith<$Res> {
  factory _$NearbyClinicLoadFailureCopyWith(_NearbyClinicLoadFailure value,
          $Res Function(_NearbyClinicLoadFailure) then) =
      __$NearbyClinicLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$NearbyClinicLoadFailureCopyWithImpl<$Res>
    extends _$NearbyclinicStateCopyWithImpl<$Res>
    implements _$NearbyClinicLoadFailureCopyWith<$Res> {
  __$NearbyClinicLoadFailureCopyWithImpl(_NearbyClinicLoadFailure _value,
      $Res Function(_NearbyClinicLoadFailure) _then)
      : super(_value, (v) => _then(v as _NearbyClinicLoadFailure));

  @override
  _NearbyClinicLoadFailure get _value =>
      super._value as _NearbyClinicLoadFailure;
}

/// @nodoc
class _$_NearbyClinicLoadFailure implements _NearbyClinicLoadFailure {
  const _$_NearbyClinicLoadFailure();

  @override
  String toString() {
    return 'NearbyclinicState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NearbyClinicLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Clinic>? clinics) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Clinic>? clinics)? loadSuccess,
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
    required TResult Function(_NearbyClinicInitial value) initial,
    required TResult Function(_NearbyClinicLoadSuccess value) loadSuccess,
    required TResult Function(_NearbyClinicLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NearbyClinicInitial value)? initial,
    TResult Function(_NearbyClinicLoadSuccess value)? loadSuccess,
    TResult Function(_NearbyClinicLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _NearbyClinicLoadFailure implements NearbyclinicState {
  const factory _NearbyClinicLoadFailure() = _$_NearbyClinicLoadFailure;
}
