// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryEventTearOff {
  const _$CategoryEventTearOff();

  _LoadStarted loadStarted({bool isRefresh = false}) {
    return _LoadStarted(
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
const $CategoryEvent = _$CategoryEventTearOff();

/// @nodoc
mixin _$CategoryEvent {
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
  $CategoryEventCopyWith<CategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  final CategoryEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEvent) _then;

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
    implements $CategoryEventCopyWith<$Res> {
  factory _$LoadStartedCopyWith(
          _LoadStarted value, $Res Function(_LoadStarted) then) =
      __$LoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({bool isRefresh});
}

/// @nodoc
class __$LoadStartedCopyWithImpl<$Res> extends _$CategoryEventCopyWithImpl<$Res>
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
    return 'CategoryEvent.loadStarted(isRefresh: $isRefresh)';
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

abstract class _LoadStarted implements CategoryEvent {
  const factory _LoadStarted({bool isRefresh}) = _$_LoadStarted;

  @override
  bool get isRefresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

  _CategoryInitial initial() {
    return const _CategoryInitial();
  }

  _CategoryLoadSuccess loadSuccess({BuiltList<Category>? categories}) {
    return _CategoryLoadSuccess(
      categories: categories,
    );
  }

  _CategoryLoadFailure loadFailure() {
    return const _CategoryLoadFailure();
  }
}

/// @nodoc
const $CategoryState = _$CategoryStateTearOff();

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Category>? categories) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Category>? categories)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryInitial value) initial,
    required TResult Function(_CategoryLoadSuccess value) loadSuccess,
    required TResult Function(_CategoryLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryInitial value)? initial,
    TResult Function(_CategoryLoadSuccess value)? loadSuccess,
    TResult Function(_CategoryLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;
}

/// @nodoc
abstract class _$CategoryInitialCopyWith<$Res> {
  factory _$CategoryInitialCopyWith(
          _CategoryInitial value, $Res Function(_CategoryInitial) then) =
      __$CategoryInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$CategoryInitialCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryInitialCopyWith<$Res> {
  __$CategoryInitialCopyWithImpl(
      _CategoryInitial _value, $Res Function(_CategoryInitial) _then)
      : super(_value, (v) => _then(v as _CategoryInitial));

  @override
  _CategoryInitial get _value => super._value as _CategoryInitial;
}

/// @nodoc
class _$_CategoryInitial implements _CategoryInitial {
  const _$_CategoryInitial();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CategoryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Category>? categories) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Category>? categories)? loadSuccess,
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
    required TResult Function(_CategoryInitial value) initial,
    required TResult Function(_CategoryLoadSuccess value) loadSuccess,
    required TResult Function(_CategoryLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryInitial value)? initial,
    TResult Function(_CategoryLoadSuccess value)? loadSuccess,
    TResult Function(_CategoryLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CategoryInitial implements CategoryState {
  const factory _CategoryInitial() = _$_CategoryInitial;
}

/// @nodoc
abstract class _$CategoryLoadSuccessCopyWith<$Res> {
  factory _$CategoryLoadSuccessCopyWith(_CategoryLoadSuccess value,
          $Res Function(_CategoryLoadSuccess) then) =
      __$CategoryLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Category>? categories});
}

/// @nodoc
class __$CategoryLoadSuccessCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryLoadSuccessCopyWith<$Res> {
  __$CategoryLoadSuccessCopyWithImpl(
      _CategoryLoadSuccess _value, $Res Function(_CategoryLoadSuccess) _then)
      : super(_value, (v) => _then(v as _CategoryLoadSuccess));

  @override
  _CategoryLoadSuccess get _value => super._value as _CategoryLoadSuccess;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_CategoryLoadSuccess(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as BuiltList<Category>?,
    ));
  }
}

/// @nodoc
class _$_CategoryLoadSuccess implements _CategoryLoadSuccess {
  const _$_CategoryLoadSuccess({this.categories});

  @override
  final BuiltList<Category>? categories;

  @override
  String toString() {
    return 'CategoryState.loadSuccess(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryLoadSuccess &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$CategoryLoadSuccessCopyWith<_CategoryLoadSuccess> get copyWith =>
      __$CategoryLoadSuccessCopyWithImpl<_CategoryLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Category>? categories) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Category>? categories)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryInitial value) initial,
    required TResult Function(_CategoryLoadSuccess value) loadSuccess,
    required TResult Function(_CategoryLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryInitial value)? initial,
    TResult Function(_CategoryLoadSuccess value)? loadSuccess,
    TResult Function(_CategoryLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CategoryLoadSuccess implements CategoryState {
  const factory _CategoryLoadSuccess({BuiltList<Category>? categories}) =
      _$_CategoryLoadSuccess;

  BuiltList<Category>? get categories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CategoryLoadSuccessCopyWith<_CategoryLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CategoryLoadFailureCopyWith<$Res> {
  factory _$CategoryLoadFailureCopyWith(_CategoryLoadFailure value,
          $Res Function(_CategoryLoadFailure) then) =
      __$CategoryLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$CategoryLoadFailureCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryLoadFailureCopyWith<$Res> {
  __$CategoryLoadFailureCopyWithImpl(
      _CategoryLoadFailure _value, $Res Function(_CategoryLoadFailure) _then)
      : super(_value, (v) => _then(v as _CategoryLoadFailure));

  @override
  _CategoryLoadFailure get _value => super._value as _CategoryLoadFailure;
}

/// @nodoc
class _$_CategoryLoadFailure implements _CategoryLoadFailure {
  const _$_CategoryLoadFailure();

  @override
  String toString() {
    return 'CategoryState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CategoryLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<Category>? categories) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<Category>? categories)? loadSuccess,
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
    required TResult Function(_CategoryInitial value) initial,
    required TResult Function(_CategoryLoadSuccess value) loadSuccess,
    required TResult Function(_CategoryLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryInitial value)? initial,
    TResult Function(_CategoryLoadSuccess value)? loadSuccess,
    TResult Function(_CategoryLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _CategoryLoadFailure implements CategoryState {
  const factory _CategoryLoadFailure() = _$_CategoryLoadFailure;
}
