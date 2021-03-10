// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_display_name_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateDisplayNameStateTearOff {
  const _$UpdateDisplayNameStateTearOff();

  _UpdateDisplayNameState call(
      {DisplayName displayName = const DisplayName.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return _UpdateDisplayNameState(
      displayName: displayName,
      status: status,
    );
  }
}

/// @nodoc
const $UpdateDisplayNameState = _$UpdateDisplayNameStateTearOff();

/// @nodoc
mixin _$UpdateDisplayNameState {
  DisplayName get displayName => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateDisplayNameStateCopyWith<UpdateDisplayNameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDisplayNameStateCopyWith<$Res> {
  factory $UpdateDisplayNameStateCopyWith(UpdateDisplayNameState value,
          $Res Function(UpdateDisplayNameState) then) =
      _$UpdateDisplayNameStateCopyWithImpl<$Res>;
  $Res call({DisplayName displayName, FormzStatus status});
}

/// @nodoc
class _$UpdateDisplayNameStateCopyWithImpl<$Res>
    implements $UpdateDisplayNameStateCopyWith<$Res> {
  _$UpdateDisplayNameStateCopyWithImpl(this._value, this._then);

  final UpdateDisplayNameState _value;
  // ignore: unused_field
  final $Res Function(UpdateDisplayNameState) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$UpdateDisplayNameStateCopyWith<$Res>
    implements $UpdateDisplayNameStateCopyWith<$Res> {
  factory _$UpdateDisplayNameStateCopyWith(_UpdateDisplayNameState value,
          $Res Function(_UpdateDisplayNameState) then) =
      __$UpdateDisplayNameStateCopyWithImpl<$Res>;
  @override
  $Res call({DisplayName displayName, FormzStatus status});
}

/// @nodoc
class __$UpdateDisplayNameStateCopyWithImpl<$Res>
    extends _$UpdateDisplayNameStateCopyWithImpl<$Res>
    implements _$UpdateDisplayNameStateCopyWith<$Res> {
  __$UpdateDisplayNameStateCopyWithImpl(_UpdateDisplayNameState _value,
      $Res Function(_UpdateDisplayNameState) _then)
      : super(_value, (v) => _then(v as _UpdateDisplayNameState));

  @override
  _UpdateDisplayNameState get _value => super._value as _UpdateDisplayNameState;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? status = freezed,
  }) {
    return _then(_UpdateDisplayNameState(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
class _$_UpdateDisplayNameState implements _UpdateDisplayNameState {
  const _$_UpdateDisplayNameState(
      {this.displayName = const DisplayName.pure(),
      this.status = FormzStatus.pure});

  @JsonKey(defaultValue: const DisplayName.pure())
  @override
  final DisplayName displayName;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'UpdateDisplayNameState(displayName: $displayName, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateDisplayNameState &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$UpdateDisplayNameStateCopyWith<_UpdateDisplayNameState> get copyWith =>
      __$UpdateDisplayNameStateCopyWithImpl<_UpdateDisplayNameState>(
          this, _$identity);
}

abstract class _UpdateDisplayNameState implements UpdateDisplayNameState {
  const factory _UpdateDisplayNameState(
      {DisplayName displayName,
      FormzStatus status}) = _$_UpdateDisplayNameState;

  @override
  DisplayName get displayName => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateDisplayNameStateCopyWith<_UpdateDisplayNameState> get copyWith =>
      throw _privateConstructorUsedError;
}
