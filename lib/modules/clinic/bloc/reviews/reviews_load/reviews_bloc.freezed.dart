// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reviews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewsEventTearOff {
  const _$ReviewsEventTearOff();

  _LoadStarted loadStarted({bool isRefresh = false}) {
    return _LoadStarted(
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
const $ReviewsEvent = _$ReviewsEventTearOff();

/// @nodoc
mixin _$ReviewsEvent {
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
  $ReviewsEventCopyWith<ReviewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsEventCopyWith<$Res> {
  factory $ReviewsEventCopyWith(
          ReviewsEvent value, $Res Function(ReviewsEvent) then) =
      _$ReviewsEventCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class _$ReviewsEventCopyWithImpl<$Res> implements $ReviewsEventCopyWith<$Res> {
  _$ReviewsEventCopyWithImpl(this._value, this._then);

  final ReviewsEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewsEvent) _then;

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
    implements $ReviewsEventCopyWith<$Res> {
  factory _$LoadStartedCopyWith(
          _LoadStarted value, $Res Function(_LoadStarted) then) =
      __$LoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({bool isRefresh});
}

/// @nodoc
class __$LoadStartedCopyWithImpl<$Res> extends _$ReviewsEventCopyWithImpl<$Res>
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
    return 'ReviewsEvent.loadStarted(isRefresh: $isRefresh)';
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

abstract class _LoadStarted implements ReviewsEvent {
  const factory _LoadStarted({bool isRefresh}) = _$_LoadStarted;

  @override
  bool get isRefresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReviewsStateTearOff {
  const _$ReviewsStateTearOff();

  _ReviewsInitial initial() {
    return const _ReviewsInitial();
  }

  ReviewsLoadSuccess loadSuccess(
      {BuiltList<Review>? reviews,
      bool hasReachedMax = false,
      bool isLoadMore = false}) {
    return ReviewsLoadSuccess(
      reviews: reviews,
      hasReachedMax: hasReachedMax,
      isLoadMore: isLoadMore,
    );
  }

  _ReviewsLoadFailure loadFailure() {
    return const _ReviewsLoadFailure();
  }
}

/// @nodoc
const $ReviewsState = _$ReviewsStateTearOff();

/// @nodoc
mixin _$ReviewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            BuiltList<Review>? reviews, bool hasReachedMax, bool isLoadMore)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltList<Review>? reviews, bool hasReachedMax, bool isLoadMore)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewsInitial value) initial,
    required TResult Function(ReviewsLoadSuccess value) loadSuccess,
    required TResult Function(_ReviewsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewsInitial value)? initial,
    TResult Function(ReviewsLoadSuccess value)? loadSuccess,
    TResult Function(_ReviewsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsStateCopyWith<$Res> {
  factory $ReviewsStateCopyWith(
          ReviewsState value, $Res Function(ReviewsState) then) =
      _$ReviewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewsStateCopyWithImpl<$Res> implements $ReviewsStateCopyWith<$Res> {
  _$ReviewsStateCopyWithImpl(this._value, this._then);

  final ReviewsState _value;
  // ignore: unused_field
  final $Res Function(ReviewsState) _then;
}

/// @nodoc
abstract class _$ReviewsInitialCopyWith<$Res> {
  factory _$ReviewsInitialCopyWith(
          _ReviewsInitial value, $Res Function(_ReviewsInitial) then) =
      __$ReviewsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReviewsInitialCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res>
    implements _$ReviewsInitialCopyWith<$Res> {
  __$ReviewsInitialCopyWithImpl(
      _ReviewsInitial _value, $Res Function(_ReviewsInitial) _then)
      : super(_value, (v) => _then(v as _ReviewsInitial));

  @override
  _ReviewsInitial get _value => super._value as _ReviewsInitial;
}

/// @nodoc
class _$_ReviewsInitial implements _ReviewsInitial {
  const _$_ReviewsInitial();

  @override
  String toString() {
    return 'ReviewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReviewsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            BuiltList<Review>? reviews, bool hasReachedMax, bool isLoadMore)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltList<Review>? reviews, bool hasReachedMax, bool isLoadMore)?
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
    required TResult Function(_ReviewsInitial value) initial,
    required TResult Function(ReviewsLoadSuccess value) loadSuccess,
    required TResult Function(_ReviewsLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewsInitial value)? initial,
    TResult Function(ReviewsLoadSuccess value)? loadSuccess,
    TResult Function(_ReviewsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ReviewsInitial implements ReviewsState {
  const factory _ReviewsInitial() = _$_ReviewsInitial;
}

/// @nodoc
abstract class $ReviewsLoadSuccessCopyWith<$Res> {
  factory $ReviewsLoadSuccessCopyWith(
          ReviewsLoadSuccess value, $Res Function(ReviewsLoadSuccess) then) =
      _$ReviewsLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Review>? reviews, bool hasReachedMax, bool isLoadMore});
}

/// @nodoc
class _$ReviewsLoadSuccessCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res>
    implements $ReviewsLoadSuccessCopyWith<$Res> {
  _$ReviewsLoadSuccessCopyWithImpl(
      ReviewsLoadSuccess _value, $Res Function(ReviewsLoadSuccess) _then)
      : super(_value, (v) => _then(v as ReviewsLoadSuccess));

  @override
  ReviewsLoadSuccess get _value => super._value as ReviewsLoadSuccess;

  @override
  $Res call({
    Object? reviews = freezed,
    Object? hasReachedMax = freezed,
    Object? isLoadMore = freezed,
  }) {
    return _then(ReviewsLoadSuccess(
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as BuiltList<Review>?,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: isLoadMore == freezed
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$ReviewsLoadSuccess implements ReviewsLoadSuccess {
  const _$ReviewsLoadSuccess(
      {this.reviews, this.hasReachedMax = false, this.isLoadMore = false});

  @override
  final BuiltList<Review>? reviews;
  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadMore;

  @override
  String toString() {
    return 'ReviewsState.loadSuccess(reviews: $reviews, hasReachedMax: $hasReachedMax, isLoadMore: $isLoadMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReviewsLoadSuccess &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality()
                    .equals(other.reviews, reviews)) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.isLoadMore, isLoadMore) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadMore, isLoadMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reviews) ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(isLoadMore);

  @JsonKey(ignore: true)
  @override
  $ReviewsLoadSuccessCopyWith<ReviewsLoadSuccess> get copyWith =>
      _$ReviewsLoadSuccessCopyWithImpl<ReviewsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            BuiltList<Review>? reviews, bool hasReachedMax, bool isLoadMore)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(reviews, hasReachedMax, isLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltList<Review>? reviews, bool hasReachedMax, bool isLoadMore)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(reviews, hasReachedMax, isLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewsInitial value) initial,
    required TResult Function(ReviewsLoadSuccess value) loadSuccess,
    required TResult Function(_ReviewsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewsInitial value)? initial,
    TResult Function(ReviewsLoadSuccess value)? loadSuccess,
    TResult Function(_ReviewsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ReviewsLoadSuccess implements ReviewsState {
  const factory ReviewsLoadSuccess(
      {BuiltList<Review>? reviews,
      bool hasReachedMax,
      bool isLoadMore}) = _$ReviewsLoadSuccess;

  BuiltList<Review>? get reviews => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isLoadMore => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsLoadSuccessCopyWith<ReviewsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReviewsLoadFailureCopyWith<$Res> {
  factory _$ReviewsLoadFailureCopyWith(
          _ReviewsLoadFailure value, $Res Function(_ReviewsLoadFailure) then) =
      __$ReviewsLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReviewsLoadFailureCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res>
    implements _$ReviewsLoadFailureCopyWith<$Res> {
  __$ReviewsLoadFailureCopyWithImpl(
      _ReviewsLoadFailure _value, $Res Function(_ReviewsLoadFailure) _then)
      : super(_value, (v) => _then(v as _ReviewsLoadFailure));

  @override
  _ReviewsLoadFailure get _value => super._value as _ReviewsLoadFailure;
}

/// @nodoc
class _$_ReviewsLoadFailure implements _ReviewsLoadFailure {
  const _$_ReviewsLoadFailure();

  @override
  String toString() {
    return 'ReviewsState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReviewsLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            BuiltList<Review>? reviews, bool hasReachedMax, bool isLoadMore)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltList<Review>? reviews, bool hasReachedMax, bool isLoadMore)?
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
    required TResult Function(_ReviewsInitial value) initial,
    required TResult Function(ReviewsLoadSuccess value) loadSuccess,
    required TResult Function(_ReviewsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewsInitial value)? initial,
    TResult Function(ReviewsLoadSuccess value)? loadSuccess,
    TResult Function(_ReviewsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ReviewsLoadFailure implements ReviewsState {
  const factory _ReviewsLoadFailure() = _$_ReviewsLoadFailure;
}
