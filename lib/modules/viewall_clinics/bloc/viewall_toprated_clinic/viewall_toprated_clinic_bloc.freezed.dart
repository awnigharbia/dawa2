// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'viewall_toprated_clinic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewallTopratedClinicEventTearOff {
  const _$ViewallTopratedClinicEventTearOff();

  _LoadStarted loadStarted({bool isRefresh = false}) {
    return _LoadStarted(
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
const $ViewallTopratedClinicEvent = _$ViewallTopratedClinicEventTearOff();

/// @nodoc
mixin _$ViewallTopratedClinicEvent {
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
  $ViewallTopratedClinicEventCopyWith<ViewallTopratedClinicEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewallTopratedClinicEventCopyWith<$Res> {
  factory $ViewallTopratedClinicEventCopyWith(ViewallTopratedClinicEvent value,
          $Res Function(ViewallTopratedClinicEvent) then) =
      _$ViewallTopratedClinicEventCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class _$ViewallTopratedClinicEventCopyWithImpl<$Res>
    implements $ViewallTopratedClinicEventCopyWith<$Res> {
  _$ViewallTopratedClinicEventCopyWithImpl(this._value, this._then);

  final ViewallTopratedClinicEvent _value;
  // ignore: unused_field
  final $Res Function(ViewallTopratedClinicEvent) _then;

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
    implements $ViewallTopratedClinicEventCopyWith<$Res> {
  factory _$LoadStartedCopyWith(
          _LoadStarted value, $Res Function(_LoadStarted) then) =
      __$LoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({bool isRefresh});
}

/// @nodoc
class __$LoadStartedCopyWithImpl<$Res>
    extends _$ViewallTopratedClinicEventCopyWithImpl<$Res>
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
    return 'ViewallTopratedClinicEvent.loadStarted(isRefresh: $isRefresh)';
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

abstract class _LoadStarted implements ViewallTopratedClinicEvent {
  const factory _LoadStarted({bool isRefresh}) = _$_LoadStarted;

  @override
  bool get isRefresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewallTopratedClinicStateTearOff {
  const _$ViewallTopratedClinicStateTearOff();

  _ViewAllTopRatedInitial initial() {
    return const _ViewAllTopRatedInitial();
  }

  _ViewAllTopRatedLoadSuccess loadSuccess(
      {BuiltList<Clinic>? clinics, bool hasReachedMax = false}) {
    return _ViewAllTopRatedLoadSuccess(
      clinics: clinics,
      hasReachedMax: hasReachedMax,
    );
  }

  _ViewAllTopRatedLoadFailure loadFailure() {
    return const _ViewAllTopRatedLoadFailure();
  }
}

/// @nodoc
const $ViewallTopratedClinicState = _$ViewallTopratedClinicStateTearOff();

/// @nodoc
mixin _$ViewallTopratedClinicState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Clinic>? clinics, bool hasReachedMax)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Clinic>? clinics, bool hasReachedMax)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllTopRatedInitial value) initial,
    required TResult Function(_ViewAllTopRatedLoadSuccess value) loadSuccess,
    required TResult Function(_ViewAllTopRatedLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllTopRatedInitial value)? initial,
    TResult Function(_ViewAllTopRatedLoadSuccess value)? loadSuccess,
    TResult Function(_ViewAllTopRatedLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewallTopratedClinicStateCopyWith<$Res> {
  factory $ViewallTopratedClinicStateCopyWith(ViewallTopratedClinicState value,
          $Res Function(ViewallTopratedClinicState) then) =
      _$ViewallTopratedClinicStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewallTopratedClinicStateCopyWithImpl<$Res>
    implements $ViewallTopratedClinicStateCopyWith<$Res> {
  _$ViewallTopratedClinicStateCopyWithImpl(this._value, this._then);

  final ViewallTopratedClinicState _value;
  // ignore: unused_field
  final $Res Function(ViewallTopratedClinicState) _then;
}

/// @nodoc
abstract class _$ViewAllTopRatedInitialCopyWith<$Res> {
  factory _$ViewAllTopRatedInitialCopyWith(_ViewAllTopRatedInitial value,
          $Res Function(_ViewAllTopRatedInitial) then) =
      __$ViewAllTopRatedInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewAllTopRatedInitialCopyWithImpl<$Res>
    extends _$ViewallTopratedClinicStateCopyWithImpl<$Res>
    implements _$ViewAllTopRatedInitialCopyWith<$Res> {
  __$ViewAllTopRatedInitialCopyWithImpl(_ViewAllTopRatedInitial _value,
      $Res Function(_ViewAllTopRatedInitial) _then)
      : super(_value, (v) => _then(v as _ViewAllTopRatedInitial));

  @override
  _ViewAllTopRatedInitial get _value => super._value as _ViewAllTopRatedInitial;
}

/// @nodoc
class _$_ViewAllTopRatedInitial implements _ViewAllTopRatedInitial {
  const _$_ViewAllTopRatedInitial();

  @override
  String toString() {
    return 'ViewallTopratedClinicState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewAllTopRatedInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Clinic>? clinics, bool hasReachedMax)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Clinic>? clinics, bool hasReachedMax)?
        loadSuccess,
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
    required TResult Function(_ViewAllTopRatedInitial value) initial,
    required TResult Function(_ViewAllTopRatedLoadSuccess value) loadSuccess,
    required TResult Function(_ViewAllTopRatedLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllTopRatedInitial value)? initial,
    TResult Function(_ViewAllTopRatedLoadSuccess value)? loadSuccess,
    TResult Function(_ViewAllTopRatedLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ViewAllTopRatedInitial implements ViewallTopratedClinicState {
  const factory _ViewAllTopRatedInitial() = _$_ViewAllTopRatedInitial;
}

/// @nodoc
abstract class _$ViewAllTopRatedLoadSuccessCopyWith<$Res> {
  factory _$ViewAllTopRatedLoadSuccessCopyWith(
          _ViewAllTopRatedLoadSuccess value,
          $Res Function(_ViewAllTopRatedLoadSuccess) then) =
      __$ViewAllTopRatedLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Clinic>? clinics, bool hasReachedMax});
}

/// @nodoc
class __$ViewAllTopRatedLoadSuccessCopyWithImpl<$Res>
    extends _$ViewallTopratedClinicStateCopyWithImpl<$Res>
    implements _$ViewAllTopRatedLoadSuccessCopyWith<$Res> {
  __$ViewAllTopRatedLoadSuccessCopyWithImpl(_ViewAllTopRatedLoadSuccess _value,
      $Res Function(_ViewAllTopRatedLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ViewAllTopRatedLoadSuccess));

  @override
  _ViewAllTopRatedLoadSuccess get _value =>
      super._value as _ViewAllTopRatedLoadSuccess;

  @override
  $Res call({
    Object? clinics = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_ViewAllTopRatedLoadSuccess(
      clinics: clinics == freezed
          ? _value.clinics
          : clinics // ignore: cast_nullable_to_non_nullable
              as BuiltList<Clinic>?,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ViewAllTopRatedLoadSuccess implements _ViewAllTopRatedLoadSuccess {
  const _$_ViewAllTopRatedLoadSuccess(
      {this.clinics, this.hasReachedMax = false});

  @override
  final BuiltList<Clinic>? clinics;
  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ViewallTopratedClinicState.loadSuccess(clinics: $clinics, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewAllTopRatedLoadSuccess &&
            (identical(other.clinics, clinics) ||
                const DeepCollectionEquality()
                    .equals(other.clinics, clinics)) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(clinics) ^
      const DeepCollectionEquality().hash(hasReachedMax);

  @JsonKey(ignore: true)
  @override
  _$ViewAllTopRatedLoadSuccessCopyWith<_ViewAllTopRatedLoadSuccess>
      get copyWith => __$ViewAllTopRatedLoadSuccessCopyWithImpl<
          _ViewAllTopRatedLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Clinic>? clinics, bool hasReachedMax)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(clinics, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Clinic>? clinics, bool hasReachedMax)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(clinics, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllTopRatedInitial value) initial,
    required TResult Function(_ViewAllTopRatedLoadSuccess value) loadSuccess,
    required TResult Function(_ViewAllTopRatedLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllTopRatedInitial value)? initial,
    TResult Function(_ViewAllTopRatedLoadSuccess value)? loadSuccess,
    TResult Function(_ViewAllTopRatedLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ViewAllTopRatedLoadSuccess
    implements ViewallTopratedClinicState {
  const factory _ViewAllTopRatedLoadSuccess(
      {BuiltList<Clinic>? clinics,
      bool hasReachedMax}) = _$_ViewAllTopRatedLoadSuccess;

  BuiltList<Clinic>? get clinics => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ViewAllTopRatedLoadSuccessCopyWith<_ViewAllTopRatedLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewAllTopRatedLoadFailureCopyWith<$Res> {
  factory _$ViewAllTopRatedLoadFailureCopyWith(
          _ViewAllTopRatedLoadFailure value,
          $Res Function(_ViewAllTopRatedLoadFailure) then) =
      __$ViewAllTopRatedLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewAllTopRatedLoadFailureCopyWithImpl<$Res>
    extends _$ViewallTopratedClinicStateCopyWithImpl<$Res>
    implements _$ViewAllTopRatedLoadFailureCopyWith<$Res> {
  __$ViewAllTopRatedLoadFailureCopyWithImpl(_ViewAllTopRatedLoadFailure _value,
      $Res Function(_ViewAllTopRatedLoadFailure) _then)
      : super(_value, (v) => _then(v as _ViewAllTopRatedLoadFailure));

  @override
  _ViewAllTopRatedLoadFailure get _value =>
      super._value as _ViewAllTopRatedLoadFailure;
}

/// @nodoc
class _$_ViewAllTopRatedLoadFailure implements _ViewAllTopRatedLoadFailure {
  const _$_ViewAllTopRatedLoadFailure();

  @override
  String toString() {
    return 'ViewallTopratedClinicState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewAllTopRatedLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Clinic>? clinics, bool hasReachedMax)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Clinic>? clinics, bool hasReachedMax)?
        loadSuccess,
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
    required TResult Function(_ViewAllTopRatedInitial value) initial,
    required TResult Function(_ViewAllTopRatedLoadSuccess value) loadSuccess,
    required TResult Function(_ViewAllTopRatedLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllTopRatedInitial value)? initial,
    TResult Function(_ViewAllTopRatedLoadSuccess value)? loadSuccess,
    TResult Function(_ViewAllTopRatedLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ViewAllTopRatedLoadFailure
    implements ViewallTopratedClinicState {
  const factory _ViewAllTopRatedLoadFailure() = _$_ViewAllTopRatedLoadFailure;
}
