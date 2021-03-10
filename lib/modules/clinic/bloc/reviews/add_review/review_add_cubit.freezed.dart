// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review_add_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewAddStateTearOff {
  const _$ReviewAddStateTearOff();

  _ReviewAddState call(
      {Comment comment = const Comment.pure(),
      double rate = 1.0,
      FormzStatus status = FormzStatus.pure}) {
    return _ReviewAddState(
      comment: comment,
      rate: rate,
      status: status,
    );
  }
}

/// @nodoc
const $ReviewAddState = _$ReviewAddStateTearOff();

/// @nodoc
mixin _$ReviewAddState {
  Comment get comment => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewAddStateCopyWith<ReviewAddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAddStateCopyWith<$Res> {
  factory $ReviewAddStateCopyWith(
          ReviewAddState value, $Res Function(ReviewAddState) then) =
      _$ReviewAddStateCopyWithImpl<$Res>;
  $Res call({Comment comment, double rate, FormzStatus status});
}

/// @nodoc
class _$ReviewAddStateCopyWithImpl<$Res>
    implements $ReviewAddStateCopyWith<$Res> {
  _$ReviewAddStateCopyWithImpl(this._value, this._then);

  final ReviewAddState _value;
  // ignore: unused_field
  final $Res Function(ReviewAddState) _then;

  @override
  $Res call({
    Object? comment = freezed,
    Object? rate = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$ReviewAddStateCopyWith<$Res>
    implements $ReviewAddStateCopyWith<$Res> {
  factory _$ReviewAddStateCopyWith(
          _ReviewAddState value, $Res Function(_ReviewAddState) then) =
      __$ReviewAddStateCopyWithImpl<$Res>;
  @override
  $Res call({Comment comment, double rate, FormzStatus status});
}

/// @nodoc
class __$ReviewAddStateCopyWithImpl<$Res>
    extends _$ReviewAddStateCopyWithImpl<$Res>
    implements _$ReviewAddStateCopyWith<$Res> {
  __$ReviewAddStateCopyWithImpl(
      _ReviewAddState _value, $Res Function(_ReviewAddState) _then)
      : super(_value, (v) => _then(v as _ReviewAddState));

  @override
  _ReviewAddState get _value => super._value as _ReviewAddState;

  @override
  $Res call({
    Object? comment = freezed,
    Object? rate = freezed,
    Object? status = freezed,
  }) {
    return _then(_ReviewAddState(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
class _$_ReviewAddState implements _ReviewAddState {
  const _$_ReviewAddState(
      {this.comment = const Comment.pure(),
      this.rate = 1.0,
      this.status = FormzStatus.pure});

  @JsonKey(defaultValue: const Comment.pure())
  @override
  final Comment comment;
  @JsonKey(defaultValue: 1.0)
  @override
  final double rate;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'ReviewAddState(comment: $comment, rate: $rate, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewAddState &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ReviewAddStateCopyWith<_ReviewAddState> get copyWith =>
      __$ReviewAddStateCopyWithImpl<_ReviewAddState>(this, _$identity);
}

abstract class _ReviewAddState implements ReviewAddState {
  const factory _ReviewAddState(
      {Comment comment, double rate, FormzStatus status}) = _$_ReviewAddState;

  @override
  Comment get comment => throw _privateConstructorUsedError;
  @override
  double get rate => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewAddStateCopyWith<_ReviewAddState> get copyWith =>
      throw _privateConstructorUsedError;
}
