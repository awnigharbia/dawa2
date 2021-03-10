// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  _LocationStarted started() {
    return const _LocationStarted();
  }

  _RequestPermissionStarted requestPermission() {
    return const _RequestPermissionStarted();
  }
}

/// @nodoc
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? requestPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStarted value) started,
    required TResult Function(_RequestPermissionStarted value)
        requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStarted value)? started,
    TResult Function(_RequestPermissionStarted value)? requestPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class _$LocationStartedCopyWith<$Res> {
  factory _$LocationStartedCopyWith(
          _LocationStarted value, $Res Function(_LocationStarted) then) =
      __$LocationStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationStartedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$LocationStartedCopyWith<$Res> {
  __$LocationStartedCopyWithImpl(
      _LocationStarted _value, $Res Function(_LocationStarted) _then)
      : super(_value, (v) => _then(v as _LocationStarted));

  @override
  _LocationStarted get _value => super._value as _LocationStarted;
}

/// @nodoc
class _$_LocationStarted implements _LocationStarted {
  const _$_LocationStarted();

  @override
  String toString() {
    return 'LocationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() requestPermission,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? requestPermission,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStarted value) started,
    required TResult Function(_RequestPermissionStarted value)
        requestPermission,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStarted value)? started,
    TResult Function(_RequestPermissionStarted value)? requestPermission,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _LocationStarted implements LocationEvent {
  const factory _LocationStarted() = _$_LocationStarted;
}

/// @nodoc
abstract class _$RequestPermissionStartedCopyWith<$Res> {
  factory _$RequestPermissionStartedCopyWith(_RequestPermissionStarted value,
          $Res Function(_RequestPermissionStarted) then) =
      __$RequestPermissionStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestPermissionStartedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$RequestPermissionStartedCopyWith<$Res> {
  __$RequestPermissionStartedCopyWithImpl(_RequestPermissionStarted _value,
      $Res Function(_RequestPermissionStarted) _then)
      : super(_value, (v) => _then(v as _RequestPermissionStarted));

  @override
  _RequestPermissionStarted get _value =>
      super._value as _RequestPermissionStarted;
}

/// @nodoc
class _$_RequestPermissionStarted implements _RequestPermissionStarted {
  const _$_RequestPermissionStarted();

  @override
  String toString() {
    return 'LocationEvent.requestPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestPermissionStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() requestPermission,
  }) {
    return requestPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? requestPermission,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStarted value) started,
    required TResult Function(_RequestPermissionStarted value)
        requestPermission,
  }) {
    return requestPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStarted value)? started,
    TResult Function(_RequestPermissionStarted value)? requestPermission,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestPermissionStarted implements LocationEvent {
  const factory _RequestPermissionStarted() = _$_RequestPermissionStarted;
}

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationInitial initial() {
    return const _LocationInitial();
  }

  LocationLoadSuccess loadSuccess(double latitude, double longitude) {
    return LocationLoadSuccess(
      latitude,
      longitude,
    );
  }

  _LocationLoadFailure loadFailure() {
    return const _LocationLoadFailure();
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double latitude, double longitude) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double latitude, double longitude)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationInitial value) initial,
    required TResult Function(LocationLoadSuccess value) loadSuccess,
    required TResult Function(_LocationLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationInitial value)? initial,
    TResult Function(LocationLoadSuccess value)? loadSuccess,
    TResult Function(_LocationLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$LocationInitialCopyWith<$Res> {
  factory _$LocationInitialCopyWith(
          _LocationInitial value, $Res Function(_LocationInitial) then) =
      __$LocationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationInitialCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationInitialCopyWith<$Res> {
  __$LocationInitialCopyWithImpl(
      _LocationInitial _value, $Res Function(_LocationInitial) _then)
      : super(_value, (v) => _then(v as _LocationInitial));

  @override
  _LocationInitial get _value => super._value as _LocationInitial;
}

/// @nodoc
class _$_LocationInitial implements _LocationInitial {
  const _$_LocationInitial();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double latitude, double longitude) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double latitude, double longitude)? loadSuccess,
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
    required TResult Function(_LocationInitial value) initial,
    required TResult Function(LocationLoadSuccess value) loadSuccess,
    required TResult Function(_LocationLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationInitial value)? initial,
    TResult Function(LocationLoadSuccess value)? loadSuccess,
    TResult Function(_LocationLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LocationInitial implements LocationState {
  const factory _LocationInitial() = _$_LocationInitial;
}

/// @nodoc
abstract class $LocationLoadSuccessCopyWith<$Res> {
  factory $LocationLoadSuccessCopyWith(
          LocationLoadSuccess value, $Res Function(LocationLoadSuccess) then) =
      _$LocationLoadSuccessCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationLoadSuccessCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements $LocationLoadSuccessCopyWith<$Res> {
  _$LocationLoadSuccessCopyWithImpl(
      LocationLoadSuccess _value, $Res Function(LocationLoadSuccess) _then)
      : super(_value, (v) => _then(v as LocationLoadSuccess));

  @override
  LocationLoadSuccess get _value => super._value as LocationLoadSuccess;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(LocationLoadSuccess(
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
class _$LocationLoadSuccess implements LocationLoadSuccess {
  const _$LocationLoadSuccess(this.latitude, this.longitude);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LocationState.loadSuccess(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationLoadSuccess &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  $LocationLoadSuccessCopyWith<LocationLoadSuccess> get copyWith =>
      _$LocationLoadSuccessCopyWithImpl<LocationLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double latitude, double longitude) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double latitude, double longitude)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationInitial value) initial,
    required TResult Function(LocationLoadSuccess value) loadSuccess,
    required TResult Function(_LocationLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationInitial value)? initial,
    TResult Function(LocationLoadSuccess value)? loadSuccess,
    TResult Function(_LocationLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LocationLoadSuccess implements LocationState {
  const factory LocationLoadSuccess(double latitude, double longitude) =
      _$LocationLoadSuccess;

  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationLoadSuccessCopyWith<LocationLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocationLoadFailureCopyWith<$Res> {
  factory _$LocationLoadFailureCopyWith(_LocationLoadFailure value,
          $Res Function(_LocationLoadFailure) then) =
      __$LocationLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationLoadFailureCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationLoadFailureCopyWith<$Res> {
  __$LocationLoadFailureCopyWithImpl(
      _LocationLoadFailure _value, $Res Function(_LocationLoadFailure) _then)
      : super(_value, (v) => _then(v as _LocationLoadFailure));

  @override
  _LocationLoadFailure get _value => super._value as _LocationLoadFailure;
}

/// @nodoc
class _$_LocationLoadFailure implements _LocationLoadFailure {
  const _$_LocationLoadFailure();

  @override
  String toString() {
    return 'LocationState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double latitude, double longitude) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double latitude, double longitude)? loadSuccess,
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
    required TResult Function(_LocationInitial value) initial,
    required TResult Function(LocationLoadSuccess value) loadSuccess,
    required TResult Function(_LocationLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationInitial value)? initial,
    TResult Function(LocationLoadSuccess value)? loadSuccess,
    TResult Function(_LocationLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LocationLoadFailure implements LocationState {
  const factory _LocationLoadFailure() = _$_LocationLoadFailure;
}
