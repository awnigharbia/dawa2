// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sms_code_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SmsCodeStateTearOff {
  const _$SmsCodeStateTearOff();

  _SmsCodeState call(
      {SmsCode smsCode = const SmsCode.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return _SmsCodeState(
      smsCode: smsCode,
      status: status,
    );
  }
}

/// @nodoc
const $SmsCodeState = _$SmsCodeStateTearOff();

/// @nodoc
mixin _$SmsCodeState {
  SmsCode get smsCode => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmsCodeStateCopyWith<SmsCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsCodeStateCopyWith<$Res> {
  factory $SmsCodeStateCopyWith(
          SmsCodeState value, $Res Function(SmsCodeState) then) =
      _$SmsCodeStateCopyWithImpl<$Res>;
  $Res call({SmsCode smsCode, FormzStatus status});
}

/// @nodoc
class _$SmsCodeStateCopyWithImpl<$Res> implements $SmsCodeStateCopyWith<$Res> {
  _$SmsCodeStateCopyWithImpl(this._value, this._then);

  final SmsCodeState _value;
  // ignore: unused_field
  final $Res Function(SmsCodeState) _then;

  @override
  $Res call({
    Object? smsCode = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as SmsCode,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$SmsCodeStateCopyWith<$Res>
    implements $SmsCodeStateCopyWith<$Res> {
  factory _$SmsCodeStateCopyWith(
          _SmsCodeState value, $Res Function(_SmsCodeState) then) =
      __$SmsCodeStateCopyWithImpl<$Res>;
  @override
  $Res call({SmsCode smsCode, FormzStatus status});
}

/// @nodoc
class __$SmsCodeStateCopyWithImpl<$Res> extends _$SmsCodeStateCopyWithImpl<$Res>
    implements _$SmsCodeStateCopyWith<$Res> {
  __$SmsCodeStateCopyWithImpl(
      _SmsCodeState _value, $Res Function(_SmsCodeState) _then)
      : super(_value, (v) => _then(v as _SmsCodeState));

  @override
  _SmsCodeState get _value => super._value as _SmsCodeState;

  @override
  $Res call({
    Object? smsCode = freezed,
    Object? status = freezed,
  }) {
    return _then(_SmsCodeState(
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as SmsCode,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
class _$_SmsCodeState implements _SmsCodeState {
  const _$_SmsCodeState(
      {this.smsCode = const SmsCode.pure(), this.status = FormzStatus.pure});

  @JsonKey(defaultValue: const SmsCode.pure())
  @override
  final SmsCode smsCode;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'SmsCodeState(smsCode: $smsCode, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SmsCodeState &&
            (identical(other.smsCode, smsCode) ||
                const DeepCollectionEquality()
                    .equals(other.smsCode, smsCode)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(smsCode) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$SmsCodeStateCopyWith<_SmsCodeState> get copyWith =>
      __$SmsCodeStateCopyWithImpl<_SmsCodeState>(this, _$identity);
}

abstract class _SmsCodeState implements SmsCodeState {
  const factory _SmsCodeState({SmsCode smsCode, FormzStatus status}) =
      _$_SmsCodeState;

  @override
  SmsCode get smsCode => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SmsCodeStateCopyWith<_SmsCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
