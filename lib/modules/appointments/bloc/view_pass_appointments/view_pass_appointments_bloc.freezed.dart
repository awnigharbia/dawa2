// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'view_pass_appointments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewPassAppointmentsEventTearOff {
  const _$ViewPassAppointmentsEventTearOff();

  _LoadStarted loadStarted({bool isRefresh = false}) {
    return _LoadStarted(
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
const $ViewPassAppointmentsEvent = _$ViewPassAppointmentsEventTearOff();

/// @nodoc
mixin _$ViewPassAppointmentsEvent {
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
  $ViewPassAppointmentsEventCopyWith<ViewPassAppointmentsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewPassAppointmentsEventCopyWith<$Res> {
  factory $ViewPassAppointmentsEventCopyWith(ViewPassAppointmentsEvent value,
          $Res Function(ViewPassAppointmentsEvent) then) =
      _$ViewPassAppointmentsEventCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class _$ViewPassAppointmentsEventCopyWithImpl<$Res>
    implements $ViewPassAppointmentsEventCopyWith<$Res> {
  _$ViewPassAppointmentsEventCopyWithImpl(this._value, this._then);

  final ViewPassAppointmentsEvent _value;
  // ignore: unused_field
  final $Res Function(ViewPassAppointmentsEvent) _then;

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
    implements $ViewPassAppointmentsEventCopyWith<$Res> {
  factory _$LoadStartedCopyWith(
          _LoadStarted value, $Res Function(_LoadStarted) then) =
      __$LoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({bool isRefresh});
}

/// @nodoc
class __$LoadStartedCopyWithImpl<$Res>
    extends _$ViewPassAppointmentsEventCopyWithImpl<$Res>
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
    return 'ViewPassAppointmentsEvent.loadStarted(isRefresh: $isRefresh)';
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

abstract class _LoadStarted implements ViewPassAppointmentsEvent {
  const factory _LoadStarted({bool isRefresh}) = _$_LoadStarted;

  @override
  bool get isRefresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewPassAppointmentsStateTearOff {
  const _$ViewPassAppointmentsStateTearOff();

  _ViewPassAppointmentsInitial initial() {
    return const _ViewPassAppointmentsInitial();
  }

  _ViewPassAppointmentsLoadSuccess loadSuccess(
      {BuiltList<AppointmentData>? appointmentsData}) {
    return _ViewPassAppointmentsLoadSuccess(
      appointmentsData: appointmentsData,
    );
  }

  _ViewPassAppointmentsLoadFailure loadFailure() {
    return const _ViewPassAppointmentsLoadFailure();
  }
}

/// @nodoc
const $ViewPassAppointmentsState = _$ViewPassAppointmentsStateTearOff();

/// @nodoc
mixin _$ViewPassAppointmentsState {
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
    required TResult Function(_ViewPassAppointmentsInitial value) initial,
    required TResult Function(_ViewPassAppointmentsLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewPassAppointmentsLoadFailure value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewPassAppointmentsInitial value)? initial,
    TResult Function(_ViewPassAppointmentsLoadSuccess value)? loadSuccess,
    TResult Function(_ViewPassAppointmentsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewPassAppointmentsStateCopyWith<$Res> {
  factory $ViewPassAppointmentsStateCopyWith(ViewPassAppointmentsState value,
          $Res Function(ViewPassAppointmentsState) then) =
      _$ViewPassAppointmentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewPassAppointmentsStateCopyWithImpl<$Res>
    implements $ViewPassAppointmentsStateCopyWith<$Res> {
  _$ViewPassAppointmentsStateCopyWithImpl(this._value, this._then);

  final ViewPassAppointmentsState _value;
  // ignore: unused_field
  final $Res Function(ViewPassAppointmentsState) _then;
}

/// @nodoc
abstract class _$ViewPassAppointmentsInitialCopyWith<$Res> {
  factory _$ViewPassAppointmentsInitialCopyWith(
          _ViewPassAppointmentsInitial value,
          $Res Function(_ViewPassAppointmentsInitial) then) =
      __$ViewPassAppointmentsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewPassAppointmentsInitialCopyWithImpl<$Res>
    extends _$ViewPassAppointmentsStateCopyWithImpl<$Res>
    implements _$ViewPassAppointmentsInitialCopyWith<$Res> {
  __$ViewPassAppointmentsInitialCopyWithImpl(
      _ViewPassAppointmentsInitial _value,
      $Res Function(_ViewPassAppointmentsInitial) _then)
      : super(_value, (v) => _then(v as _ViewPassAppointmentsInitial));

  @override
  _ViewPassAppointmentsInitial get _value =>
      super._value as _ViewPassAppointmentsInitial;
}

/// @nodoc
class _$_ViewPassAppointmentsInitial implements _ViewPassAppointmentsInitial {
  const _$_ViewPassAppointmentsInitial();

  @override
  String toString() {
    return 'ViewPassAppointmentsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewPassAppointmentsInitial);
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
    required TResult Function(_ViewPassAppointmentsInitial value) initial,
    required TResult Function(_ViewPassAppointmentsLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewPassAppointmentsLoadFailure value)
        loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewPassAppointmentsInitial value)? initial,
    TResult Function(_ViewPassAppointmentsLoadSuccess value)? loadSuccess,
    TResult Function(_ViewPassAppointmentsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ViewPassAppointmentsInitial
    implements ViewPassAppointmentsState {
  const factory _ViewPassAppointmentsInitial() = _$_ViewPassAppointmentsInitial;
}

/// @nodoc
abstract class _$ViewPassAppointmentsLoadSuccessCopyWith<$Res> {
  factory _$ViewPassAppointmentsLoadSuccessCopyWith(
          _ViewPassAppointmentsLoadSuccess value,
          $Res Function(_ViewPassAppointmentsLoadSuccess) then) =
      __$ViewPassAppointmentsLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<AppointmentData>? appointmentsData});
}

/// @nodoc
class __$ViewPassAppointmentsLoadSuccessCopyWithImpl<$Res>
    extends _$ViewPassAppointmentsStateCopyWithImpl<$Res>
    implements _$ViewPassAppointmentsLoadSuccessCopyWith<$Res> {
  __$ViewPassAppointmentsLoadSuccessCopyWithImpl(
      _ViewPassAppointmentsLoadSuccess _value,
      $Res Function(_ViewPassAppointmentsLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ViewPassAppointmentsLoadSuccess));

  @override
  _ViewPassAppointmentsLoadSuccess get _value =>
      super._value as _ViewPassAppointmentsLoadSuccess;

  @override
  $Res call({
    Object? appointmentsData = freezed,
  }) {
    return _then(_ViewPassAppointmentsLoadSuccess(
      appointmentsData: appointmentsData == freezed
          ? _value.appointmentsData
          : appointmentsData // ignore: cast_nullable_to_non_nullable
              as BuiltList<AppointmentData>?,
    ));
  }
}

/// @nodoc
class _$_ViewPassAppointmentsLoadSuccess
    implements _ViewPassAppointmentsLoadSuccess {
  const _$_ViewPassAppointmentsLoadSuccess({this.appointmentsData});

  @override
  final BuiltList<AppointmentData>? appointmentsData;

  @override
  String toString() {
    return 'ViewPassAppointmentsState.loadSuccess(appointmentsData: $appointmentsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewPassAppointmentsLoadSuccess &&
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
  _$ViewPassAppointmentsLoadSuccessCopyWith<_ViewPassAppointmentsLoadSuccess>
      get copyWith => __$ViewPassAppointmentsLoadSuccessCopyWithImpl<
          _ViewPassAppointmentsLoadSuccess>(this, _$identity);

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
    required TResult Function(_ViewPassAppointmentsInitial value) initial,
    required TResult Function(_ViewPassAppointmentsLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewPassAppointmentsLoadFailure value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewPassAppointmentsInitial value)? initial,
    TResult Function(_ViewPassAppointmentsLoadSuccess value)? loadSuccess,
    TResult Function(_ViewPassAppointmentsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ViewPassAppointmentsLoadSuccess
    implements ViewPassAppointmentsState {
  const factory _ViewPassAppointmentsLoadSuccess(
          {BuiltList<AppointmentData>? appointmentsData}) =
      _$_ViewPassAppointmentsLoadSuccess;

  BuiltList<AppointmentData>? get appointmentsData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ViewPassAppointmentsLoadSuccessCopyWith<_ViewPassAppointmentsLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewPassAppointmentsLoadFailureCopyWith<$Res> {
  factory _$ViewPassAppointmentsLoadFailureCopyWith(
          _ViewPassAppointmentsLoadFailure value,
          $Res Function(_ViewPassAppointmentsLoadFailure) then) =
      __$ViewPassAppointmentsLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewPassAppointmentsLoadFailureCopyWithImpl<$Res>
    extends _$ViewPassAppointmentsStateCopyWithImpl<$Res>
    implements _$ViewPassAppointmentsLoadFailureCopyWith<$Res> {
  __$ViewPassAppointmentsLoadFailureCopyWithImpl(
      _ViewPassAppointmentsLoadFailure _value,
      $Res Function(_ViewPassAppointmentsLoadFailure) _then)
      : super(_value, (v) => _then(v as _ViewPassAppointmentsLoadFailure));

  @override
  _ViewPassAppointmentsLoadFailure get _value =>
      super._value as _ViewPassAppointmentsLoadFailure;
}

/// @nodoc
class _$_ViewPassAppointmentsLoadFailure
    implements _ViewPassAppointmentsLoadFailure {
  const _$_ViewPassAppointmentsLoadFailure();

  @override
  String toString() {
    return 'ViewPassAppointmentsState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewPassAppointmentsLoadFailure);
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
    required TResult Function(_ViewPassAppointmentsInitial value) initial,
    required TResult Function(_ViewPassAppointmentsLoadSuccess value)
        loadSuccess,
    required TResult Function(_ViewPassAppointmentsLoadFailure value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewPassAppointmentsInitial value)? initial,
    TResult Function(_ViewPassAppointmentsLoadSuccess value)? loadSuccess,
    TResult Function(_ViewPassAppointmentsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ViewPassAppointmentsLoadFailure
    implements ViewPassAppointmentsState {
  const factory _ViewPassAppointmentsLoadFailure() =
      _$_ViewPassAppointmentsLoadFailure;
}
