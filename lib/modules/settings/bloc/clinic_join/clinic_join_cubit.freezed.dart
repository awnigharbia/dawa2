// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'clinic_join_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClinicJoinStateTearOff {
  const _$ClinicJoinStateTearOff();

  _ClinicJoinState call(
      {ClinicName clinicName = const ClinicName.pure(),
      ClinicOwner clinicOwner = const ClinicOwner.pure(),
      ContactNumber contactOwner = const ContactNumber.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return _ClinicJoinState(
      clinicName: clinicName,
      clinicOwner: clinicOwner,
      contactOwner: contactOwner,
      status: status,
    );
  }
}

/// @nodoc
const $ClinicJoinState = _$ClinicJoinStateTearOff();

/// @nodoc
mixin _$ClinicJoinState {
  ClinicName get clinicName => throw _privateConstructorUsedError;
  ClinicOwner get clinicOwner => throw _privateConstructorUsedError;
  ContactNumber get contactOwner => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClinicJoinStateCopyWith<ClinicJoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicJoinStateCopyWith<$Res> {
  factory $ClinicJoinStateCopyWith(
          ClinicJoinState value, $Res Function(ClinicJoinState) then) =
      _$ClinicJoinStateCopyWithImpl<$Res>;
  $Res call(
      {ClinicName clinicName,
      ClinicOwner clinicOwner,
      ContactNumber contactOwner,
      FormzStatus status});
}

/// @nodoc
class _$ClinicJoinStateCopyWithImpl<$Res>
    implements $ClinicJoinStateCopyWith<$Res> {
  _$ClinicJoinStateCopyWithImpl(this._value, this._then);

  final ClinicJoinState _value;
  // ignore: unused_field
  final $Res Function(ClinicJoinState) _then;

  @override
  $Res call({
    Object? clinicName = freezed,
    Object? clinicOwner = freezed,
    Object? contactOwner = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      clinicName: clinicName == freezed
          ? _value.clinicName
          : clinicName // ignore: cast_nullable_to_non_nullable
              as ClinicName,
      clinicOwner: clinicOwner == freezed
          ? _value.clinicOwner
          : clinicOwner // ignore: cast_nullable_to_non_nullable
              as ClinicOwner,
      contactOwner: contactOwner == freezed
          ? _value.contactOwner
          : contactOwner // ignore: cast_nullable_to_non_nullable
              as ContactNumber,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$ClinicJoinStateCopyWith<$Res>
    implements $ClinicJoinStateCopyWith<$Res> {
  factory _$ClinicJoinStateCopyWith(
          _ClinicJoinState value, $Res Function(_ClinicJoinState) then) =
      __$ClinicJoinStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ClinicName clinicName,
      ClinicOwner clinicOwner,
      ContactNumber contactOwner,
      FormzStatus status});
}

/// @nodoc
class __$ClinicJoinStateCopyWithImpl<$Res>
    extends _$ClinicJoinStateCopyWithImpl<$Res>
    implements _$ClinicJoinStateCopyWith<$Res> {
  __$ClinicJoinStateCopyWithImpl(
      _ClinicJoinState _value, $Res Function(_ClinicJoinState) _then)
      : super(_value, (v) => _then(v as _ClinicJoinState));

  @override
  _ClinicJoinState get _value => super._value as _ClinicJoinState;

  @override
  $Res call({
    Object? clinicName = freezed,
    Object? clinicOwner = freezed,
    Object? contactOwner = freezed,
    Object? status = freezed,
  }) {
    return _then(_ClinicJoinState(
      clinicName: clinicName == freezed
          ? _value.clinicName
          : clinicName // ignore: cast_nullable_to_non_nullable
              as ClinicName,
      clinicOwner: clinicOwner == freezed
          ? _value.clinicOwner
          : clinicOwner // ignore: cast_nullable_to_non_nullable
              as ClinicOwner,
      contactOwner: contactOwner == freezed
          ? _value.contactOwner
          : contactOwner // ignore: cast_nullable_to_non_nullable
              as ContactNumber,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
class _$_ClinicJoinState implements _ClinicJoinState {
  const _$_ClinicJoinState(
      {this.clinicName = const ClinicName.pure(),
      this.clinicOwner = const ClinicOwner.pure(),
      this.contactOwner = const ContactNumber.pure(),
      this.status = FormzStatus.pure});

  @JsonKey(defaultValue: const ClinicName.pure())
  @override
  final ClinicName clinicName;
  @JsonKey(defaultValue: const ClinicOwner.pure())
  @override
  final ClinicOwner clinicOwner;
  @JsonKey(defaultValue: const ContactNumber.pure())
  @override
  final ContactNumber contactOwner;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'ClinicJoinState(clinicName: $clinicName, clinicOwner: $clinicOwner, contactOwner: $contactOwner, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClinicJoinState &&
            (identical(other.clinicName, clinicName) ||
                const DeepCollectionEquality()
                    .equals(other.clinicName, clinicName)) &&
            (identical(other.clinicOwner, clinicOwner) ||
                const DeepCollectionEquality()
                    .equals(other.clinicOwner, clinicOwner)) &&
            (identical(other.contactOwner, contactOwner) ||
                const DeepCollectionEquality()
                    .equals(other.contactOwner, contactOwner)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(clinicName) ^
      const DeepCollectionEquality().hash(clinicOwner) ^
      const DeepCollectionEquality().hash(contactOwner) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ClinicJoinStateCopyWith<_ClinicJoinState> get copyWith =>
      __$ClinicJoinStateCopyWithImpl<_ClinicJoinState>(this, _$identity);
}

abstract class _ClinicJoinState implements ClinicJoinState {
  const factory _ClinicJoinState(
      {ClinicName clinicName,
      ClinicOwner clinicOwner,
      ContactNumber contactOwner,
      FormzStatus status}) = _$_ClinicJoinState;

  @override
  ClinicName get clinicName => throw _privateConstructorUsedError;
  @override
  ClinicOwner get clinicOwner => throw _privateConstructorUsedError;
  @override
  ContactNumber get contactOwner => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClinicJoinStateCopyWith<_ClinicJoinState> get copyWith =>
      throw _privateConstructorUsedError;
}
