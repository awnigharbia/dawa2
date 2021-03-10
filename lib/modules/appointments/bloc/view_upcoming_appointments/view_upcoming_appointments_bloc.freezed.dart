// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'view_upcoming_appointments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewUpcomingAppointmentsEventTearOff {
  const _$ViewUpcomingAppointmentsEventTearOff();

  _LoadStarted loadStarted({bool isRefresh = false}) {
    return _LoadStarted(
      isRefresh: isRefresh,
    );
  }

  _CancelAppointment cancelAppointment({String? appointmentId}) {
    return _CancelAppointment(
      appointmentId: appointmentId,
    );
  }
}

/// @nodoc
const $ViewUpcomingAppointmentsEvent = _$ViewUpcomingAppointmentsEventTearOff();

/// @nodoc
mixin _$ViewUpcomingAppointmentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) loadStarted,
    required TResult Function(String? appointmentId) cancelAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? loadStarted,
    TResult Function(String? appointmentId)? cancelAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStarted value) loadStarted,
    required TResult Function(_CancelAppointment value) cancelAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStarted value)? loadStarted,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewUpcomingAppointmentsEventCopyWith<$Res> {
  factory $ViewUpcomingAppointmentsEventCopyWith(
          ViewUpcomingAppointmentsEvent value,
          $Res Function(ViewUpcomingAppointmentsEvent) then) =
      _$ViewUpcomingAppointmentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewUpcomingAppointmentsEventCopyWithImpl<$Res>
    implements $ViewUpcomingAppointmentsEventCopyWith<$Res> {
  _$ViewUpcomingAppointmentsEventCopyWithImpl(this._value, this._then);

  final ViewUpcomingAppointmentsEvent _value;
  // ignore: unused_field
  final $Res Function(ViewUpcomingAppointmentsEvent) _then;
}

/// @nodoc
abstract class _$LoadStartedCopyWith<$Res> {
  factory _$LoadStartedCopyWith(
          _LoadStarted value, $Res Function(_LoadStarted) then) =
      __$LoadStartedCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class __$LoadStartedCopyWithImpl<$Res>
    extends _$ViewUpcomingAppointmentsEventCopyWithImpl<$Res>
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
    return 'ViewUpcomingAppointmentsEvent.loadStarted(isRefresh: $isRefresh)';
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
    required TResult Function(String? appointmentId) cancelAppointment,
  }) {
    return loadStarted(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? loadStarted,
    TResult Function(String? appointmentId)? cancelAppointment,
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
    required TResult Function(_CancelAppointment value) cancelAppointment,
  }) {
    return loadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStarted value)? loadStarted,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(this);
    }
    return orElse();
  }
}

abstract class _LoadStarted implements ViewUpcomingAppointmentsEvent {
  const factory _LoadStarted({bool isRefresh}) = _$_LoadStarted;

  bool get isRefresh => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelAppointmentCopyWith<$Res> {
  factory _$CancelAppointmentCopyWith(
          _CancelAppointment value, $Res Function(_CancelAppointment) then) =
      __$CancelAppointmentCopyWithImpl<$Res>;
  $Res call({String? appointmentId});
}

/// @nodoc
class __$CancelAppointmentCopyWithImpl<$Res>
    extends _$ViewUpcomingAppointmentsEventCopyWithImpl<$Res>
    implements _$CancelAppointmentCopyWith<$Res> {
  __$CancelAppointmentCopyWithImpl(
      _CancelAppointment _value, $Res Function(_CancelAppointment) _then)
      : super(_value, (v) => _then(v as _CancelAppointment));

  @override
  _CancelAppointment get _value => super._value as _CancelAppointment;

  @override
  $Res call({
    Object? appointmentId = freezed,
  }) {
    return _then(_CancelAppointment(
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_CancelAppointment implements _CancelAppointment {
  const _$_CancelAppointment({this.appointmentId});

  @override
  final String? appointmentId;

  @override
  String toString() {
    return 'ViewUpcomingAppointmentsEvent.cancelAppointment(appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelAppointment &&
            (identical(other.appointmentId, appointmentId) ||
                const DeepCollectionEquality()
                    .equals(other.appointmentId, appointmentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appointmentId);

  @JsonKey(ignore: true)
  @override
  _$CancelAppointmentCopyWith<_CancelAppointment> get copyWith =>
      __$CancelAppointmentCopyWithImpl<_CancelAppointment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) loadStarted,
    required TResult Function(String? appointmentId) cancelAppointment,
  }) {
    return cancelAppointment(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? loadStarted,
    TResult Function(String? appointmentId)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (cancelAppointment != null) {
      return cancelAppointment(appointmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStarted value) loadStarted,
    required TResult Function(_CancelAppointment value) cancelAppointment,
  }) {
    return cancelAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStarted value)? loadStarted,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (cancelAppointment != null) {
      return cancelAppointment(this);
    }
    return orElse();
  }
}

abstract class _CancelAppointment implements ViewUpcomingAppointmentsEvent {
  const factory _CancelAppointment({String? appointmentId}) =
      _$_CancelAppointment;

  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CancelAppointmentCopyWith<_CancelAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewUpcomingAppointmentsStateTearOff {
  const _$ViewUpcomingAppointmentsStateTearOff();

  _ViewUpcomingAppointmentsInitial initial() {
    return const _ViewUpcomingAppointmentsInitial();
  }

  _ViewUpcomingAppointmentsLoadSuccess loadSuccess(
      {BuiltList<AppointmentData>? appointmentsData}) {
    return _ViewUpcomingAppointmentsLoadSuccess(
      appointmentsData: appointmentsData,
    );
  }

  _ViewUpcomingAppointmentsLoadFailure loadFailure() {
    return const _ViewUpcomingAppointmentsLoadFailure();
  }
}

/// @nodoc
const $ViewUpcomingAppointmentsState = _$ViewUpcomingAppointmentsStateTearOff();

/// @nodoc
mixin _$ViewUpcomingAppointmentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<AppointmentData>? appointmentsData)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<AppointmentData>? appointmentsData)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewUpcomingAppointmentsInitial value) initial,
    required TResult Function(_ViewUpcomingAppointmentsLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewUpcomingAppointmentsLoadFailure value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewUpcomingAppointmentsInitial value)? initial,
    TResult Function(_ViewUpcomingAppointmentsLoadSuccess value)? loadSuccess,
    TResult Function(_ViewUpcomingAppointmentsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewUpcomingAppointmentsStateCopyWith<$Res> {
  factory $ViewUpcomingAppointmentsStateCopyWith(
          ViewUpcomingAppointmentsState value,
          $Res Function(ViewUpcomingAppointmentsState) then) =
      _$ViewUpcomingAppointmentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewUpcomingAppointmentsStateCopyWithImpl<$Res>
    implements $ViewUpcomingAppointmentsStateCopyWith<$Res> {
  _$ViewUpcomingAppointmentsStateCopyWithImpl(this._value, this._then);

  final ViewUpcomingAppointmentsState _value;
  // ignore: unused_field
  final $Res Function(ViewUpcomingAppointmentsState) _then;
}

/// @nodoc
abstract class _$ViewUpcomingAppointmentsInitialCopyWith<$Res> {
  factory _$ViewUpcomingAppointmentsInitialCopyWith(
          _ViewUpcomingAppointmentsInitial value,
          $Res Function(_ViewUpcomingAppointmentsInitial) then) =
      __$ViewUpcomingAppointmentsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewUpcomingAppointmentsInitialCopyWithImpl<$Res>
    extends _$ViewUpcomingAppointmentsStateCopyWithImpl<$Res>
    implements _$ViewUpcomingAppointmentsInitialCopyWith<$Res> {
  __$ViewUpcomingAppointmentsInitialCopyWithImpl(
      _ViewUpcomingAppointmentsInitial _value,
      $Res Function(_ViewUpcomingAppointmentsInitial) _then)
      : super(_value, (v) => _then(v as _ViewUpcomingAppointmentsInitial));

  @override
  _ViewUpcomingAppointmentsInitial get _value =>
      super._value as _ViewUpcomingAppointmentsInitial;
}

/// @nodoc
class _$_ViewUpcomingAppointmentsInitial
    implements _ViewUpcomingAppointmentsInitial {
  const _$_ViewUpcomingAppointmentsInitial();

  @override
  String toString() {
    return 'ViewUpcomingAppointmentsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewUpcomingAppointmentsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<AppointmentData>? appointmentsData)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<AppointmentData>? appointmentsData)? loadSuccess,
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
    required TResult Function(_ViewUpcomingAppointmentsInitial value) initial,
    required TResult Function(_ViewUpcomingAppointmentsLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewUpcomingAppointmentsLoadFailure value)
        loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewUpcomingAppointmentsInitial value)? initial,
    TResult Function(_ViewUpcomingAppointmentsLoadSuccess value)? loadSuccess,
    TResult Function(_ViewUpcomingAppointmentsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ViewUpcomingAppointmentsInitial
    implements ViewUpcomingAppointmentsState {
  const factory _ViewUpcomingAppointmentsInitial() =
      _$_ViewUpcomingAppointmentsInitial;
}

/// @nodoc
abstract class _$ViewUpcomingAppointmentsLoadSuccessCopyWith<$Res> {
  factory _$ViewUpcomingAppointmentsLoadSuccessCopyWith(
          _ViewUpcomingAppointmentsLoadSuccess value,
          $Res Function(_ViewUpcomingAppointmentsLoadSuccess) then) =
      __$ViewUpcomingAppointmentsLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<AppointmentData>? appointmentsData});
}

/// @nodoc
class __$ViewUpcomingAppointmentsLoadSuccessCopyWithImpl<$Res>
    extends _$ViewUpcomingAppointmentsStateCopyWithImpl<$Res>
    implements _$ViewUpcomingAppointmentsLoadSuccessCopyWith<$Res> {
  __$ViewUpcomingAppointmentsLoadSuccessCopyWithImpl(
      _ViewUpcomingAppointmentsLoadSuccess _value,
      $Res Function(_ViewUpcomingAppointmentsLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ViewUpcomingAppointmentsLoadSuccess));

  @override
  _ViewUpcomingAppointmentsLoadSuccess get _value =>
      super._value as _ViewUpcomingAppointmentsLoadSuccess;

  @override
  $Res call({
    Object? appointmentsData = freezed,
  }) {
    return _then(_ViewUpcomingAppointmentsLoadSuccess(
      appointmentsData: appointmentsData == freezed
          ? _value.appointmentsData
          : appointmentsData // ignore: cast_nullable_to_non_nullable
              as BuiltList<AppointmentData>?,
    ));
  }
}

/// @nodoc
class _$_ViewUpcomingAppointmentsLoadSuccess
    implements _ViewUpcomingAppointmentsLoadSuccess {
  const _$_ViewUpcomingAppointmentsLoadSuccess({this.appointmentsData});

  @override
  final BuiltList<AppointmentData>? appointmentsData;

  @override
  String toString() {
    return 'ViewUpcomingAppointmentsState.loadSuccess(appointmentsData: $appointmentsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewUpcomingAppointmentsLoadSuccess &&
            (identical(other.appointmentsData, appointmentsData) ||
                const DeepCollectionEquality()
                    .equals(other.appointmentsData, appointmentsData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appointmentsData);

  @JsonKey(ignore: true)
  @override
  _$ViewUpcomingAppointmentsLoadSuccessCopyWith<
          _ViewUpcomingAppointmentsLoadSuccess>
      get copyWith => __$ViewUpcomingAppointmentsLoadSuccessCopyWithImpl<
          _ViewUpcomingAppointmentsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<AppointmentData>? appointmentsData)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(appointmentsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<AppointmentData>? appointmentsData)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(appointmentsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewUpcomingAppointmentsInitial value) initial,
    required TResult Function(_ViewUpcomingAppointmentsLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewUpcomingAppointmentsLoadFailure value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewUpcomingAppointmentsInitial value)? initial,
    TResult Function(_ViewUpcomingAppointmentsLoadSuccess value)? loadSuccess,
    TResult Function(_ViewUpcomingAppointmentsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ViewUpcomingAppointmentsLoadSuccess
    implements ViewUpcomingAppointmentsState {
  const factory _ViewUpcomingAppointmentsLoadSuccess(
          {BuiltList<AppointmentData>? appointmentsData}) =
      _$_ViewUpcomingAppointmentsLoadSuccess;

  BuiltList<AppointmentData>? get appointmentsData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ViewUpcomingAppointmentsLoadSuccessCopyWith<
          _ViewUpcomingAppointmentsLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewUpcomingAppointmentsLoadFailureCopyWith<$Res> {
  factory _$ViewUpcomingAppointmentsLoadFailureCopyWith(
          _ViewUpcomingAppointmentsLoadFailure value,
          $Res Function(_ViewUpcomingAppointmentsLoadFailure) then) =
      __$ViewUpcomingAppointmentsLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewUpcomingAppointmentsLoadFailureCopyWithImpl<$Res>
    extends _$ViewUpcomingAppointmentsStateCopyWithImpl<$Res>
    implements _$ViewUpcomingAppointmentsLoadFailureCopyWith<$Res> {
  __$ViewUpcomingAppointmentsLoadFailureCopyWithImpl(
      _ViewUpcomingAppointmentsLoadFailure _value,
      $Res Function(_ViewUpcomingAppointmentsLoadFailure) _then)
      : super(_value, (v) => _then(v as _ViewUpcomingAppointmentsLoadFailure));

  @override
  _ViewUpcomingAppointmentsLoadFailure get _value =>
      super._value as _ViewUpcomingAppointmentsLoadFailure;
}

/// @nodoc
class _$_ViewUpcomingAppointmentsLoadFailure
    implements _ViewUpcomingAppointmentsLoadFailure {
  const _$_ViewUpcomingAppointmentsLoadFailure();

  @override
  String toString() {
    return 'ViewUpcomingAppointmentsState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewUpcomingAppointmentsLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<AppointmentData>? appointmentsData)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<AppointmentData>? appointmentsData)? loadSuccess,
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
    required TResult Function(_ViewUpcomingAppointmentsInitial value) initial,
    required TResult Function(_ViewUpcomingAppointmentsLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewUpcomingAppointmentsLoadFailure value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewUpcomingAppointmentsInitial value)? initial,
    TResult Function(_ViewUpcomingAppointmentsLoadSuccess value)? loadSuccess,
    TResult Function(_ViewUpcomingAppointmentsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ViewUpcomingAppointmentsLoadFailure
    implements ViewUpcomingAppointmentsState {
  const factory _ViewUpcomingAppointmentsLoadFailure() =
      _$_ViewUpcomingAppointmentsLoadFailure;
}
