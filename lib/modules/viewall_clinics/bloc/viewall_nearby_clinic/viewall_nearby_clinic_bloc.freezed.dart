// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'viewall_nearby_clinic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewallNearbyClinicEventTearOff {
  const _$ViewallNearbyClinicEventTearOff();

  _LoadStarted loadStarted({bool isRefresh = false}) {
    return _LoadStarted(
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
const $ViewallNearbyClinicEvent = _$ViewallNearbyClinicEventTearOff();

/// @nodoc
mixin _$ViewallNearbyClinicEvent {
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
  $ViewallNearbyClinicEventCopyWith<ViewallNearbyClinicEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewallNearbyClinicEventCopyWith<$Res> {
  factory $ViewallNearbyClinicEventCopyWith(ViewallNearbyClinicEvent value,
          $Res Function(ViewallNearbyClinicEvent) then) =
      _$ViewallNearbyClinicEventCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class _$ViewallNearbyClinicEventCopyWithImpl<$Res>
    implements $ViewallNearbyClinicEventCopyWith<$Res> {
  _$ViewallNearbyClinicEventCopyWithImpl(this._value, this._then);

  final ViewallNearbyClinicEvent _value;
  // ignore: unused_field
  final $Res Function(ViewallNearbyClinicEvent) _then;

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
    implements $ViewallNearbyClinicEventCopyWith<$Res> {
  factory _$LoadStartedCopyWith(
          _LoadStarted value, $Res Function(_LoadStarted) then) =
      __$LoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({bool isRefresh});
}

/// @nodoc
class __$LoadStartedCopyWithImpl<$Res>
    extends _$ViewallNearbyClinicEventCopyWithImpl<$Res>
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
    return 'ViewallNearbyClinicEvent.loadStarted(isRefresh: $isRefresh)';
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

abstract class _LoadStarted implements ViewallNearbyClinicEvent {
  const factory _LoadStarted({bool isRefresh}) = _$_LoadStarted;

  @override
  bool get isRefresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewallNearbyClinicStateTearOff {
  const _$ViewallNearbyClinicStateTearOff();

  _ViewallNearbyClinicInitial initial() {
    return const _ViewallNearbyClinicInitial();
  }

  _ViewallNearbyClinicLoadSuccess loadSuccess({BuiltList<Clinic>? clinics}) {
    return _ViewallNearbyClinicLoadSuccess(
      clinics: clinics,
    );
  }

  _ViewallNearbyClinicLoadFailure loadFailure() {
    return const _ViewallNearbyClinicLoadFailure();
  }
}

/// @nodoc
const $ViewallNearbyClinicState = _$ViewallNearbyClinicStateTearOff();

/// @nodoc
mixin _$ViewallNearbyClinicState {
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
    required TResult Function(_ViewallNearbyClinicInitial value) initial,
    required TResult Function(_ViewallNearbyClinicLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewallNearbyClinicLoadFailure value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewallNearbyClinicInitial value)? initial,
    TResult Function(_ViewallNearbyClinicLoadSuccess value)? loadSuccess,
    TResult Function(_ViewallNearbyClinicLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewallNearbyClinicStateCopyWith<$Res> {
  factory $ViewallNearbyClinicStateCopyWith(ViewallNearbyClinicState value,
          $Res Function(ViewallNearbyClinicState) then) =
      _$ViewallNearbyClinicStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewallNearbyClinicStateCopyWithImpl<$Res>
    implements $ViewallNearbyClinicStateCopyWith<$Res> {
  _$ViewallNearbyClinicStateCopyWithImpl(this._value, this._then);

  final ViewallNearbyClinicState _value;
  // ignore: unused_field
  final $Res Function(ViewallNearbyClinicState) _then;
}

/// @nodoc
abstract class _$ViewallNearbyClinicInitialCopyWith<$Res> {
  factory _$ViewallNearbyClinicInitialCopyWith(
          _ViewallNearbyClinicInitial value,
          $Res Function(_ViewallNearbyClinicInitial) then) =
      __$ViewallNearbyClinicInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewallNearbyClinicInitialCopyWithImpl<$Res>
    extends _$ViewallNearbyClinicStateCopyWithImpl<$Res>
    implements _$ViewallNearbyClinicInitialCopyWith<$Res> {
  __$ViewallNearbyClinicInitialCopyWithImpl(_ViewallNearbyClinicInitial _value,
      $Res Function(_ViewallNearbyClinicInitial) _then)
      : super(_value, (v) => _then(v as _ViewallNearbyClinicInitial));

  @override
  _ViewallNearbyClinicInitial get _value =>
      super._value as _ViewallNearbyClinicInitial;
}

/// @nodoc
class _$_ViewallNearbyClinicInitial implements _ViewallNearbyClinicInitial {
  const _$_ViewallNearbyClinicInitial();

  @override
  String toString() {
    return 'ViewallNearbyClinicState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewallNearbyClinicInitial);
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
    required TResult Function(_ViewallNearbyClinicInitial value) initial,
    required TResult Function(_ViewallNearbyClinicLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewallNearbyClinicLoadFailure value)
        loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewallNearbyClinicInitial value)? initial,
    TResult Function(_ViewallNearbyClinicLoadSuccess value)? loadSuccess,
    TResult Function(_ViewallNearbyClinicLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ViewallNearbyClinicInitial implements ViewallNearbyClinicState {
  const factory _ViewallNearbyClinicInitial() = _$_ViewallNearbyClinicInitial;
}

/// @nodoc
abstract class _$ViewallNearbyClinicLoadSuccessCopyWith<$Res> {
  factory _$ViewallNearbyClinicLoadSuccessCopyWith(
          _ViewallNearbyClinicLoadSuccess value,
          $Res Function(_ViewallNearbyClinicLoadSuccess) then) =
      __$ViewallNearbyClinicLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Clinic>? clinics});
}

/// @nodoc
class __$ViewallNearbyClinicLoadSuccessCopyWithImpl<$Res>
    extends _$ViewallNearbyClinicStateCopyWithImpl<$Res>
    implements _$ViewallNearbyClinicLoadSuccessCopyWith<$Res> {
  __$ViewallNearbyClinicLoadSuccessCopyWithImpl(
      _ViewallNearbyClinicLoadSuccess _value,
      $Res Function(_ViewallNearbyClinicLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ViewallNearbyClinicLoadSuccess));

  @override
  _ViewallNearbyClinicLoadSuccess get _value =>
      super._value as _ViewallNearbyClinicLoadSuccess;

  @override
  $Res call({
    Object? clinics = freezed,
  }) {
    return _then(_ViewallNearbyClinicLoadSuccess(
      clinics: clinics == freezed
          ? _value.clinics
          : clinics // ignore: cast_nullable_to_non_nullable
              as BuiltList<Clinic>?,
    ));
  }
}

/// @nodoc
class _$_ViewallNearbyClinicLoadSuccess
    implements _ViewallNearbyClinicLoadSuccess {
  const _$_ViewallNearbyClinicLoadSuccess({this.clinics});

  @override
  final BuiltList<Clinic>? clinics;

  @override
  String toString() {
    return 'ViewallNearbyClinicState.loadSuccess(clinics: $clinics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewallNearbyClinicLoadSuccess &&
            (identical(other.clinics, clinics) ||
                const DeepCollectionEquality().equals(other.clinics, clinics)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(clinics);

  @JsonKey(ignore: true)
  @override
  _$ViewallNearbyClinicLoadSuccessCopyWith<_ViewallNearbyClinicLoadSuccess>
      get copyWith => __$ViewallNearbyClinicLoadSuccessCopyWithImpl<
          _ViewallNearbyClinicLoadSuccess>(this, _$identity);

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
    required TResult Function(_ViewallNearbyClinicInitial value) initial,
    required TResult Function(_ViewallNearbyClinicLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewallNearbyClinicLoadFailure value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewallNearbyClinicInitial value)? initial,
    TResult Function(_ViewallNearbyClinicLoadSuccess value)? loadSuccess,
    TResult Function(_ViewallNearbyClinicLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ViewallNearbyClinicLoadSuccess
    implements ViewallNearbyClinicState {
  const factory _ViewallNearbyClinicLoadSuccess({BuiltList<Clinic>? clinics}) =
      _$_ViewallNearbyClinicLoadSuccess;

  BuiltList<Clinic>? get clinics => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ViewallNearbyClinicLoadSuccessCopyWith<_ViewallNearbyClinicLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewallNearbyClinicLoadFailureCopyWith<$Res> {
  factory _$ViewallNearbyClinicLoadFailureCopyWith(
          _ViewallNearbyClinicLoadFailure value,
          $Res Function(_ViewallNearbyClinicLoadFailure) then) =
      __$ViewallNearbyClinicLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewallNearbyClinicLoadFailureCopyWithImpl<$Res>
    extends _$ViewallNearbyClinicStateCopyWithImpl<$Res>
    implements _$ViewallNearbyClinicLoadFailureCopyWith<$Res> {
  __$ViewallNearbyClinicLoadFailureCopyWithImpl(
      _ViewallNearbyClinicLoadFailure _value,
      $Res Function(_ViewallNearbyClinicLoadFailure) _then)
      : super(_value, (v) => _then(v as _ViewallNearbyClinicLoadFailure));

  @override
  _ViewallNearbyClinicLoadFailure get _value =>
      super._value as _ViewallNearbyClinicLoadFailure;
}

/// @nodoc
class _$_ViewallNearbyClinicLoadFailure
    implements _ViewallNearbyClinicLoadFailure {
  const _$_ViewallNearbyClinicLoadFailure();

  @override
  String toString() {
    return 'ViewallNearbyClinicState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewallNearbyClinicLoadFailure);
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
    required TResult Function(_ViewallNearbyClinicInitial value) initial,
    required TResult Function(_ViewallNearbyClinicLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewallNearbyClinicLoadFailure value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewallNearbyClinicInitial value)? initial,
    TResult Function(_ViewallNearbyClinicLoadSuccess value)? loadSuccess,
    TResult Function(_ViewallNearbyClinicLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ViewallNearbyClinicLoadFailure
    implements ViewallNearbyClinicState {
  const factory _ViewallNearbyClinicLoadFailure() =
      _$_ViewallNearbyClinicLoadFailure;
}
