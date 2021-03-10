// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryDetailEventTearOff {
  const _$CategoryDetailEventTearOff();

  _CategoryDetailLoadStarted loadStarted({dynamic isRefresh = false}) {
    return _CategoryDetailLoadStarted(
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
const $CategoryDetailEvent = _$CategoryDetailEventTearOff();

/// @nodoc
mixin _$CategoryDetailEvent {
  dynamic get isRefresh => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? loadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryDetailLoadStarted value) loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailLoadStarted value)? loadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryDetailEventCopyWith<CategoryDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailEventCopyWith<$Res> {
  factory $CategoryDetailEventCopyWith(
          CategoryDetailEvent value, $Res Function(CategoryDetailEvent) then) =
      _$CategoryDetailEventCopyWithImpl<$Res>;
  $Res call({dynamic isRefresh});
}

/// @nodoc
class _$CategoryDetailEventCopyWithImpl<$Res>
    implements $CategoryDetailEventCopyWith<$Res> {
  _$CategoryDetailEventCopyWithImpl(this._value, this._then);

  final CategoryDetailEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryDetailEvent) _then;

  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CategoryDetailLoadStartedCopyWith<$Res>
    implements $CategoryDetailEventCopyWith<$Res> {
  factory _$CategoryDetailLoadStartedCopyWith(_CategoryDetailLoadStarted value,
          $Res Function(_CategoryDetailLoadStarted) then) =
      __$CategoryDetailLoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isRefresh});
}

/// @nodoc
class __$CategoryDetailLoadStartedCopyWithImpl<$Res>
    extends _$CategoryDetailEventCopyWithImpl<$Res>
    implements _$CategoryDetailLoadStartedCopyWith<$Res> {
  __$CategoryDetailLoadStartedCopyWithImpl(_CategoryDetailLoadStarted _value,
      $Res Function(_CategoryDetailLoadStarted) _then)
      : super(_value, (v) => _then(v as _CategoryDetailLoadStarted));

  @override
  _CategoryDetailLoadStarted get _value =>
      super._value as _CategoryDetailLoadStarted;

  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_CategoryDetailLoadStarted(
      isRefresh: isRefresh == freezed ? _value.isRefresh : isRefresh,
    ));
  }
}

/// @nodoc
class _$_CategoryDetailLoadStarted implements _CategoryDetailLoadStarted {
  const _$_CategoryDetailLoadStarted({this.isRefresh = false});

  @JsonKey(defaultValue: false)
  @override
  final dynamic isRefresh;

  @override
  String toString() {
    return 'CategoryDetailEvent.loadStarted(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryDetailLoadStarted &&
            (identical(other.isRefresh, isRefresh) ||
                const DeepCollectionEquality()
                    .equals(other.isRefresh, isRefresh)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isRefresh);

  @JsonKey(ignore: true)
  @override
  _$CategoryDetailLoadStartedCopyWith<_CategoryDetailLoadStarted>
      get copyWith =>
          __$CategoryDetailLoadStartedCopyWithImpl<_CategoryDetailLoadStarted>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) loadStarted,
  }) {
    return loadStarted(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? loadStarted,
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
    required TResult Function(_CategoryDetailLoadStarted value) loadStarted,
  }) {
    return loadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailLoadStarted value)? loadStarted,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(this);
    }
    return orElse();
  }
}

abstract class _CategoryDetailLoadStarted implements CategoryDetailEvent {
  const factory _CategoryDetailLoadStarted({dynamic isRefresh}) =
      _$_CategoryDetailLoadStarted;

  @override
  dynamic get isRefresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryDetailLoadStartedCopyWith<_CategoryDetailLoadStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CategoryDetailStateTearOff {
  const _$CategoryDetailStateTearOff();

  _CategoryDetailInitial initial() {
    return const _CategoryDetailInitial();
  }

  _CategoryDetailLoadSuccess loadSuccess(
      {BuiltList<Clinic>? clinics, bool hasReachedMax = false}) {
    return _CategoryDetailLoadSuccess(
      clinics: clinics,
      hasReachedMax: hasReachedMax,
    );
  }

  _CategoryDetailLoadFailure loadFailure() {
    return const _CategoryDetailLoadFailure();
  }
}

/// @nodoc
const $CategoryDetailState = _$CategoryDetailStateTearOff();

/// @nodoc
mixin _$CategoryDetailState {
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
    required TResult Function(_CategoryDetailInitial value) initial,
    required TResult Function(_CategoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(_CategoryDetailLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailInitial value)? initial,
    TResult Function(_CategoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(_CategoryDetailLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailStateCopyWith<$Res> {
  factory $CategoryDetailStateCopyWith(
          CategoryDetailState value, $Res Function(CategoryDetailState) then) =
      _$CategoryDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryDetailStateCopyWithImpl<$Res>
    implements $CategoryDetailStateCopyWith<$Res> {
  _$CategoryDetailStateCopyWithImpl(this._value, this._then);

  final CategoryDetailState _value;
  // ignore: unused_field
  final $Res Function(CategoryDetailState) _then;
}

/// @nodoc
abstract class _$CategoryDetailInitialCopyWith<$Res> {
  factory _$CategoryDetailInitialCopyWith(_CategoryDetailInitial value,
          $Res Function(_CategoryDetailInitial) then) =
      __$CategoryDetailInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$CategoryDetailInitialCopyWithImpl<$Res>
    extends _$CategoryDetailStateCopyWithImpl<$Res>
    implements _$CategoryDetailInitialCopyWith<$Res> {
  __$CategoryDetailInitialCopyWithImpl(_CategoryDetailInitial _value,
      $Res Function(_CategoryDetailInitial) _then)
      : super(_value, (v) => _then(v as _CategoryDetailInitial));

  @override
  _CategoryDetailInitial get _value => super._value as _CategoryDetailInitial;
}

/// @nodoc
class _$_CategoryDetailInitial implements _CategoryDetailInitial {
  const _$_CategoryDetailInitial();

  @override
  String toString() {
    return 'CategoryDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CategoryDetailInitial);
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
    required TResult Function(_CategoryDetailInitial value) initial,
    required TResult Function(_CategoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(_CategoryDetailLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailInitial value)? initial,
    TResult Function(_CategoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(_CategoryDetailLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CategoryDetailInitial implements CategoryDetailState {
  const factory _CategoryDetailInitial() = _$_CategoryDetailInitial;
}

/// @nodoc
abstract class _$CategoryDetailLoadSuccessCopyWith<$Res> {
  factory _$CategoryDetailLoadSuccessCopyWith(_CategoryDetailLoadSuccess value,
          $Res Function(_CategoryDetailLoadSuccess) then) =
      __$CategoryDetailLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Clinic>? clinics, bool hasReachedMax});
}

/// @nodoc
class __$CategoryDetailLoadSuccessCopyWithImpl<$Res>
    extends _$CategoryDetailStateCopyWithImpl<$Res>
    implements _$CategoryDetailLoadSuccessCopyWith<$Res> {
  __$CategoryDetailLoadSuccessCopyWithImpl(_CategoryDetailLoadSuccess _value,
      $Res Function(_CategoryDetailLoadSuccess) _then)
      : super(_value, (v) => _then(v as _CategoryDetailLoadSuccess));

  @override
  _CategoryDetailLoadSuccess get _value =>
      super._value as _CategoryDetailLoadSuccess;

  @override
  $Res call({
    Object? clinics = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_CategoryDetailLoadSuccess(
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
class _$_CategoryDetailLoadSuccess implements _CategoryDetailLoadSuccess {
  const _$_CategoryDetailLoadSuccess(
      {this.clinics, this.hasReachedMax = false});

  @override
  final BuiltList<Clinic>? clinics;
  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'CategoryDetailState.loadSuccess(clinics: $clinics, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryDetailLoadSuccess &&
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
  _$CategoryDetailLoadSuccessCopyWith<_CategoryDetailLoadSuccess>
      get copyWith =>
          __$CategoryDetailLoadSuccessCopyWithImpl<_CategoryDetailLoadSuccess>(
              this, _$identity);

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
    required TResult Function(_CategoryDetailInitial value) initial,
    required TResult Function(_CategoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(_CategoryDetailLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailInitial value)? initial,
    TResult Function(_CategoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(_CategoryDetailLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CategoryDetailLoadSuccess implements CategoryDetailState {
  const factory _CategoryDetailLoadSuccess(
      {BuiltList<Clinic>? clinics,
      bool hasReachedMax}) = _$_CategoryDetailLoadSuccess;

  BuiltList<Clinic>? get clinics => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CategoryDetailLoadSuccessCopyWith<_CategoryDetailLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CategoryDetailLoadFailureCopyWith<$Res> {
  factory _$CategoryDetailLoadFailureCopyWith(_CategoryDetailLoadFailure value,
          $Res Function(_CategoryDetailLoadFailure) then) =
      __$CategoryDetailLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$CategoryDetailLoadFailureCopyWithImpl<$Res>
    extends _$CategoryDetailStateCopyWithImpl<$Res>
    implements _$CategoryDetailLoadFailureCopyWith<$Res> {
  __$CategoryDetailLoadFailureCopyWithImpl(_CategoryDetailLoadFailure _value,
      $Res Function(_CategoryDetailLoadFailure) _then)
      : super(_value, (v) => _then(v as _CategoryDetailLoadFailure));

  @override
  _CategoryDetailLoadFailure get _value =>
      super._value as _CategoryDetailLoadFailure;
}

/// @nodoc
class _$_CategoryDetailLoadFailure implements _CategoryDetailLoadFailure {
  const _$_CategoryDetailLoadFailure();

  @override
  String toString() {
    return 'CategoryDetailState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CategoryDetailLoadFailure);
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
    required TResult Function(_CategoryDetailInitial value) initial,
    required TResult Function(_CategoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(_CategoryDetailLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailInitial value)? initial,
    TResult Function(_CategoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(_CategoryDetailLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _CategoryDetailLoadFailure implements CategoryDetailState {
  const factory _CategoryDetailLoadFailure() = _$_CategoryDetailLoadFailure;
}
