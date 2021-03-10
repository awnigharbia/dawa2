// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'make_appointment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MakeAppointmentStateTearOff {
  const _$MakeAppointmentStateTearOff();

  _MakeAppointmentState call(
      {ClinicService? service,
      DateTime? appointmentDate,
      TimeOfDay? appointmentTime}) {
    return _MakeAppointmentState(
      service: service,
      appointmentDate: appointmentDate,
      appointmentTime: appointmentTime,
    );
  }
}

/// @nodoc
const $MakeAppointmentState = _$MakeAppointmentStateTearOff();

/// @nodoc
mixin _$MakeAppointmentState {
  ClinicService? get service => throw _privateConstructorUsedError;
  DateTime? get appointmentDate => throw _privateConstructorUsedError;
  TimeOfDay? get appointmentTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MakeAppointmentStateCopyWith<MakeAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeAppointmentStateCopyWith<$Res> {
  factory $MakeAppointmentStateCopyWith(MakeAppointmentState value,
          $Res Function(MakeAppointmentState) then) =
      _$MakeAppointmentStateCopyWithImpl<$Res>;
  $Res call(
      {ClinicService? service,
      DateTime? appointmentDate,
      TimeOfDay? appointmentTime});
}

/// @nodoc
class _$MakeAppointmentStateCopyWithImpl<$Res>
    implements $MakeAppointmentStateCopyWith<$Res> {
  _$MakeAppointmentStateCopyWithImpl(this._value, this._then);

  final MakeAppointmentState _value;
  // ignore: unused_field
  final $Res Function(MakeAppointmentState) _then;

  @override
  $Res call({
    Object? service = freezed,
    Object? appointmentDate = freezed,
    Object? appointmentTime = freezed,
  }) {
    return _then(_value.copyWith(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ClinicService?,
      appointmentDate: appointmentDate == freezed
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentTime: appointmentTime == freezed
          ? _value.appointmentTime
          : appointmentTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc
abstract class _$MakeAppointmentStateCopyWith<$Res>
    implements $MakeAppointmentStateCopyWith<$Res> {
  factory _$MakeAppointmentStateCopyWith(_MakeAppointmentState value,
          $Res Function(_MakeAppointmentState) then) =
      __$MakeAppointmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ClinicService? service,
      DateTime? appointmentDate,
      TimeOfDay? appointmentTime});
}

/// @nodoc
class __$MakeAppointmentStateCopyWithImpl<$Res>
    extends _$MakeAppointmentStateCopyWithImpl<$Res>
    implements _$MakeAppointmentStateCopyWith<$Res> {
  __$MakeAppointmentStateCopyWithImpl(
      _MakeAppointmentState _value, $Res Function(_MakeAppointmentState) _then)
      : super(_value, (v) => _then(v as _MakeAppointmentState));

  @override
  _MakeAppointmentState get _value => super._value as _MakeAppointmentState;

  @override
  $Res call({
    Object? service = freezed,
    Object? appointmentDate = freezed,
    Object? appointmentTime = freezed,
  }) {
    return _then(_MakeAppointmentState(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ClinicService?,
      appointmentDate: appointmentDate == freezed
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentTime: appointmentTime == freezed
          ? _value.appointmentTime
          : appointmentTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc
class _$_MakeAppointmentState implements _MakeAppointmentState {
  const _$_MakeAppointmentState(
      {this.service, this.appointmentDate, this.appointmentTime});

  @override
  final ClinicService? service;
  @override
  final DateTime? appointmentDate;
  @override
  final TimeOfDay? appointmentTime;

  @override
  String toString() {
    return 'MakeAppointmentState(service: $service, appointmentDate: $appointmentDate, appointmentTime: $appointmentTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MakeAppointmentState &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.appointmentDate, appointmentDate) ||
                const DeepCollectionEquality()
                    .equals(other.appointmentDate, appointmentDate)) &&
            (identical(other.appointmentTime, appointmentTime) ||
                const DeepCollectionEquality()
                    .equals(other.appointmentTime, appointmentTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(appointmentDate) ^
      const DeepCollectionEquality().hash(appointmentTime);

  @JsonKey(ignore: true)
  @override
  _$MakeAppointmentStateCopyWith<_MakeAppointmentState> get copyWith =>
      __$MakeAppointmentStateCopyWithImpl<_MakeAppointmentState>(
          this, _$identity);
}

abstract class _MakeAppointmentState implements MakeAppointmentState {
  const factory _MakeAppointmentState(
      {ClinicService? service,
      DateTime? appointmentDate,
      TimeOfDay? appointmentTime}) = _$_MakeAppointmentState;

  @override
  ClinicService? get service => throw _privateConstructorUsedError;
  @override
  DateTime? get appointmentDate => throw _privateConstructorUsedError;
  @override
  TimeOfDay? get appointmentTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MakeAppointmentStateCopyWith<_MakeAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
