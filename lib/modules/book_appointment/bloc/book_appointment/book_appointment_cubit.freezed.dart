// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'book_appointment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookAppointmentStateTearOff {
  const _$BookAppointmentStateTearOff();

  _BookAppointmentState call({FormzStatus status = FormzStatus.pure}) {
    return _BookAppointmentState(
      status: status,
    );
  }
}

/// @nodoc
const $BookAppointmentState = _$BookAppointmentStateTearOff();

/// @nodoc
mixin _$BookAppointmentState {
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookAppointmentStateCopyWith<BookAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAppointmentStateCopyWith<$Res> {
  factory $BookAppointmentStateCopyWith(BookAppointmentState value,
          $Res Function(BookAppointmentState) then) =
      _$BookAppointmentStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status});
}

/// @nodoc
class _$BookAppointmentStateCopyWithImpl<$Res>
    implements $BookAppointmentStateCopyWith<$Res> {
  _$BookAppointmentStateCopyWithImpl(this._value, this._then);

  final BookAppointmentState _value;
  // ignore: unused_field
  final $Res Function(BookAppointmentState) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$BookAppointmentStateCopyWith<$Res>
    implements $BookAppointmentStateCopyWith<$Res> {
  factory _$BookAppointmentStateCopyWith(_BookAppointmentState value,
          $Res Function(_BookAppointmentState) then) =
      __$BookAppointmentStateCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status});
}

/// @nodoc
class __$BookAppointmentStateCopyWithImpl<$Res>
    extends _$BookAppointmentStateCopyWithImpl<$Res>
    implements _$BookAppointmentStateCopyWith<$Res> {
  __$BookAppointmentStateCopyWithImpl(
      _BookAppointmentState _value, $Res Function(_BookAppointmentState) _then)
      : super(_value, (v) => _then(v as _BookAppointmentState));

  @override
  _BookAppointmentState get _value => super._value as _BookAppointmentState;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_BookAppointmentState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
class _$_BookAppointmentState implements _BookAppointmentState {
  const _$_BookAppointmentState({this.status = FormzStatus.pure});

  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'BookAppointmentState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookAppointmentState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$BookAppointmentStateCopyWith<_BookAppointmentState> get copyWith =>
      __$BookAppointmentStateCopyWithImpl<_BookAppointmentState>(
          this, _$identity);
}

abstract class _BookAppointmentState implements BookAppointmentState {
  const factory _BookAppointmentState({FormzStatus status}) =
      _$_BookAppointmentState;

  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookAppointmentStateCopyWith<_BookAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
