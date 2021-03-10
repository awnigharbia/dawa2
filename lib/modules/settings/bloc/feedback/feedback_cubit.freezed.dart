// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feedback_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedbackStateTearOff {
  const _$FeedbackStateTearOff();

  _FeedBackState call(
      {FeedbackTitle feedbackTitle = const FeedbackTitle.pure(),
      FeedbackMessage feedbackMessage = const FeedbackMessage.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return _FeedBackState(
      feedbackTitle: feedbackTitle,
      feedbackMessage: feedbackMessage,
      status: status,
    );
  }
}

/// @nodoc
const $FeedbackState = _$FeedbackStateTearOff();

/// @nodoc
mixin _$FeedbackState {
  FeedbackTitle get feedbackTitle => throw _privateConstructorUsedError;
  FeedbackMessage get feedbackMessage => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedbackStateCopyWith<FeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
          FeedbackState value, $Res Function(FeedbackState) then) =
      _$FeedbackStateCopyWithImpl<$Res>;
  $Res call(
      {FeedbackTitle feedbackTitle,
      FeedbackMessage feedbackMessage,
      FormzStatus status});
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

  final FeedbackState _value;
  // ignore: unused_field
  final $Res Function(FeedbackState) _then;

  @override
  $Res call({
    Object? feedbackTitle = freezed,
    Object? feedbackMessage = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      feedbackTitle: feedbackTitle == freezed
          ? _value.feedbackTitle
          : feedbackTitle // ignore: cast_nullable_to_non_nullable
              as FeedbackTitle,
      feedbackMessage: feedbackMessage == freezed
          ? _value.feedbackMessage
          : feedbackMessage // ignore: cast_nullable_to_non_nullable
              as FeedbackMessage,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$FeedBackStateCopyWith<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  factory _$FeedBackStateCopyWith(
          _FeedBackState value, $Res Function(_FeedBackState) then) =
      __$FeedBackStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FeedbackTitle feedbackTitle,
      FeedbackMessage feedbackMessage,
      FormzStatus status});
}

/// @nodoc
class __$FeedBackStateCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res>
    implements _$FeedBackStateCopyWith<$Res> {
  __$FeedBackStateCopyWithImpl(
      _FeedBackState _value, $Res Function(_FeedBackState) _then)
      : super(_value, (v) => _then(v as _FeedBackState));

  @override
  _FeedBackState get _value => super._value as _FeedBackState;

  @override
  $Res call({
    Object? feedbackTitle = freezed,
    Object? feedbackMessage = freezed,
    Object? status = freezed,
  }) {
    return _then(_FeedBackState(
      feedbackTitle: feedbackTitle == freezed
          ? _value.feedbackTitle
          : feedbackTitle // ignore: cast_nullable_to_non_nullable
              as FeedbackTitle,
      feedbackMessage: feedbackMessage == freezed
          ? _value.feedbackMessage
          : feedbackMessage // ignore: cast_nullable_to_non_nullable
              as FeedbackMessage,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
class _$_FeedBackState implements _FeedBackState {
  const _$_FeedBackState(
      {this.feedbackTitle = const FeedbackTitle.pure(),
      this.feedbackMessage = const FeedbackMessage.pure(),
      this.status = FormzStatus.pure});

  @JsonKey(defaultValue: const FeedbackTitle.pure())
  @override
  final FeedbackTitle feedbackTitle;
  @JsonKey(defaultValue: const FeedbackMessage.pure())
  @override
  final FeedbackMessage feedbackMessage;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'FeedbackState(feedbackTitle: $feedbackTitle, feedbackMessage: $feedbackMessage, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedBackState &&
            (identical(other.feedbackTitle, feedbackTitle) ||
                const DeepCollectionEquality()
                    .equals(other.feedbackTitle, feedbackTitle)) &&
            (identical(other.feedbackMessage, feedbackMessage) ||
                const DeepCollectionEquality()
                    .equals(other.feedbackMessage, feedbackMessage)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feedbackTitle) ^
      const DeepCollectionEquality().hash(feedbackMessage) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$FeedBackStateCopyWith<_FeedBackState> get copyWith =>
      __$FeedBackStateCopyWithImpl<_FeedBackState>(this, _$identity);
}

abstract class _FeedBackState implements FeedbackState {
  const factory _FeedBackState(
      {FeedbackTitle feedbackTitle,
      FeedbackMessage feedbackMessage,
      FormzStatus status}) = _$_FeedBackState;

  @override
  FeedbackTitle get feedbackTitle => throw _privateConstructorUsedError;
  @override
  FeedbackMessage get feedbackMessage => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedBackStateCopyWith<_FeedBackState> get copyWith =>
      throw _privateConstructorUsedError;
}
