// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'clinic_services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClinicServicesEventTearOff {
  const _$ClinicServicesEventTearOff();

  _LoadStarted loadStarted(
      {List<String>? servicesIdList, bool isRefresh = false}) {
    return _LoadStarted(
      servicesIdList: servicesIdList,
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
const $ClinicServicesEvent = _$ClinicServicesEventTearOff();

/// @nodoc
mixin _$ClinicServicesEvent {
  List<String>? get servicesIdList => throw _privateConstructorUsedError;
  bool get isRefresh => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String>? servicesIdList, bool isRefresh)
        loadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? servicesIdList, bool isRefresh)? loadStarted,
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
  $ClinicServicesEventCopyWith<ClinicServicesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicServicesEventCopyWith<$Res> {
  factory $ClinicServicesEventCopyWith(
          ClinicServicesEvent value, $Res Function(ClinicServicesEvent) then) =
      _$ClinicServicesEventCopyWithImpl<$Res>;
  $Res call({List<String>? servicesIdList, bool isRefresh});
}

/// @nodoc
class _$ClinicServicesEventCopyWithImpl<$Res>
    implements $ClinicServicesEventCopyWith<$Res> {
  _$ClinicServicesEventCopyWithImpl(this._value, this._then);

  final ClinicServicesEvent _value;
  // ignore: unused_field
  final $Res Function(ClinicServicesEvent) _then;

  @override
  $Res call({
    Object? servicesIdList = freezed,
    Object? isRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      servicesIdList: servicesIdList == freezed
          ? _value.servicesIdList
          : servicesIdList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoadStartedCopyWith<$Res>
    implements $ClinicServicesEventCopyWith<$Res> {
  factory _$LoadStartedCopyWith(
          _LoadStarted value, $Res Function(_LoadStarted) then) =
      __$LoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? servicesIdList, bool isRefresh});
}

/// @nodoc
class __$LoadStartedCopyWithImpl<$Res>
    extends _$ClinicServicesEventCopyWithImpl<$Res>
    implements _$LoadStartedCopyWith<$Res> {
  __$LoadStartedCopyWithImpl(
      _LoadStarted _value, $Res Function(_LoadStarted) _then)
      : super(_value, (v) => _then(v as _LoadStarted));

  @override
  _LoadStarted get _value => super._value as _LoadStarted;

  @override
  $Res call({
    Object? servicesIdList = freezed,
    Object? isRefresh = freezed,
  }) {
    return _then(_LoadStarted(
      servicesIdList: servicesIdList == freezed
          ? _value.servicesIdList
          : servicesIdList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_LoadStarted implements _LoadStarted {
  const _$_LoadStarted({this.servicesIdList, this.isRefresh = false});

  @override
  final List<String>? servicesIdList;
  @JsonKey(defaultValue: false)
  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'ClinicServicesEvent.loadStarted(servicesIdList: $servicesIdList, isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadStarted &&
            (identical(other.servicesIdList, servicesIdList) ||
                const DeepCollectionEquality()
                    .equals(other.servicesIdList, servicesIdList)) &&
            (identical(other.isRefresh, isRefresh) ||
                const DeepCollectionEquality()
                    .equals(other.isRefresh, isRefresh)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(servicesIdList) ^
      const DeepCollectionEquality().hash(isRefresh);

  @JsonKey(ignore: true)
  @override
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      __$LoadStartedCopyWithImpl<_LoadStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String>? servicesIdList, bool isRefresh)
        loadStarted,
  }) {
    return loadStarted(servicesIdList, isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? servicesIdList, bool isRefresh)? loadStarted,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(servicesIdList, isRefresh);
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

abstract class _LoadStarted implements ClinicServicesEvent {
  const factory _LoadStarted({List<String>? servicesIdList, bool isRefresh}) =
      _$_LoadStarted;

  @override
  List<String>? get servicesIdList => throw _privateConstructorUsedError;
  @override
  bool get isRefresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadStartedCopyWith<_LoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClinicServicesStateTearOff {
  const _$ClinicServicesStateTearOff();

  _ClinicServicesInitial initial() {
    return const _ClinicServicesInitial();
  }

  _ClinicServicesLoadSuccess loadSuccess({BuiltList<ClinicService>? services}) {
    return _ClinicServicesLoadSuccess(
      services: services,
    );
  }

  _ClinicServicesLoadFailure loadFailure() {
    return const _ClinicServicesLoadFailure();
  }
}

/// @nodoc
const $ClinicServicesState = _$ClinicServicesStateTearOff();

/// @nodoc
mixin _$ClinicServicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<ClinicService>? services) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<ClinicService>? services)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClinicServicesInitial value) initial,
    required TResult Function(_ClinicServicesLoadSuccess value) loadSuccess,
    required TResult Function(_ClinicServicesLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClinicServicesInitial value)? initial,
    TResult Function(_ClinicServicesLoadSuccess value)? loadSuccess,
    TResult Function(_ClinicServicesLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicServicesStateCopyWith<$Res> {
  factory $ClinicServicesStateCopyWith(
          ClinicServicesState value, $Res Function(ClinicServicesState) then) =
      _$ClinicServicesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClinicServicesStateCopyWithImpl<$Res>
    implements $ClinicServicesStateCopyWith<$Res> {
  _$ClinicServicesStateCopyWithImpl(this._value, this._then);

  final ClinicServicesState _value;
  // ignore: unused_field
  final $Res Function(ClinicServicesState) _then;
}

/// @nodoc
abstract class _$ClinicServicesInitialCopyWith<$Res> {
  factory _$ClinicServicesInitialCopyWith(_ClinicServicesInitial value,
          $Res Function(_ClinicServicesInitial) then) =
      __$ClinicServicesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClinicServicesInitialCopyWithImpl<$Res>
    extends _$ClinicServicesStateCopyWithImpl<$Res>
    implements _$ClinicServicesInitialCopyWith<$Res> {
  __$ClinicServicesInitialCopyWithImpl(_ClinicServicesInitial _value,
      $Res Function(_ClinicServicesInitial) _then)
      : super(_value, (v) => _then(v as _ClinicServicesInitial));

  @override
  _ClinicServicesInitial get _value => super._value as _ClinicServicesInitial;
}

/// @nodoc
class _$_ClinicServicesInitial implements _ClinicServicesInitial {
  const _$_ClinicServicesInitial();

  @override
  String toString() {
    return 'ClinicServicesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClinicServicesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<ClinicService>? services) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<ClinicService>? services)? loadSuccess,
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
    required TResult Function(_ClinicServicesInitial value) initial,
    required TResult Function(_ClinicServicesLoadSuccess value) loadSuccess,
    required TResult Function(_ClinicServicesLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClinicServicesInitial value)? initial,
    TResult Function(_ClinicServicesLoadSuccess value)? loadSuccess,
    TResult Function(_ClinicServicesLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ClinicServicesInitial implements ClinicServicesState {
  const factory _ClinicServicesInitial() = _$_ClinicServicesInitial;
}

/// @nodoc
abstract class _$ClinicServicesLoadSuccessCopyWith<$Res> {
  factory _$ClinicServicesLoadSuccessCopyWith(_ClinicServicesLoadSuccess value,
          $Res Function(_ClinicServicesLoadSuccess) then) =
      __$ClinicServicesLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<ClinicService>? services});
}

/// @nodoc
class __$ClinicServicesLoadSuccessCopyWithImpl<$Res>
    extends _$ClinicServicesStateCopyWithImpl<$Res>
    implements _$ClinicServicesLoadSuccessCopyWith<$Res> {
  __$ClinicServicesLoadSuccessCopyWithImpl(_ClinicServicesLoadSuccess _value,
      $Res Function(_ClinicServicesLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ClinicServicesLoadSuccess));

  @override
  _ClinicServicesLoadSuccess get _value =>
      super._value as _ClinicServicesLoadSuccess;

  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(_ClinicServicesLoadSuccess(
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as BuiltList<ClinicService>?,
    ));
  }
}

/// @nodoc
class _$_ClinicServicesLoadSuccess implements _ClinicServicesLoadSuccess {
  const _$_ClinicServicesLoadSuccess({this.services});

  @override
  final BuiltList<ClinicService>? services;

  @override
  String toString() {
    return 'ClinicServicesState.loadSuccess(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClinicServicesLoadSuccess &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(services);

  @JsonKey(ignore: true)
  @override
  _$ClinicServicesLoadSuccessCopyWith<_ClinicServicesLoadSuccess>
      get copyWith =>
          __$ClinicServicesLoadSuccessCopyWithImpl<_ClinicServicesLoadSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<ClinicService>? services) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<ClinicService>? services)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClinicServicesInitial value) initial,
    required TResult Function(_ClinicServicesLoadSuccess value) loadSuccess,
    required TResult Function(_ClinicServicesLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClinicServicesInitial value)? initial,
    TResult Function(_ClinicServicesLoadSuccess value)? loadSuccess,
    TResult Function(_ClinicServicesLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ClinicServicesLoadSuccess implements ClinicServicesState {
  const factory _ClinicServicesLoadSuccess(
      {BuiltList<ClinicService>? services}) = _$_ClinicServicesLoadSuccess;

  BuiltList<ClinicService>? get services => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ClinicServicesLoadSuccessCopyWith<_ClinicServicesLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClinicServicesLoadFailureCopyWith<$Res> {
  factory _$ClinicServicesLoadFailureCopyWith(_ClinicServicesLoadFailure value,
          $Res Function(_ClinicServicesLoadFailure) then) =
      __$ClinicServicesLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClinicServicesLoadFailureCopyWithImpl<$Res>
    extends _$ClinicServicesStateCopyWithImpl<$Res>
    implements _$ClinicServicesLoadFailureCopyWith<$Res> {
  __$ClinicServicesLoadFailureCopyWithImpl(_ClinicServicesLoadFailure _value,
      $Res Function(_ClinicServicesLoadFailure) _then)
      : super(_value, (v) => _then(v as _ClinicServicesLoadFailure));

  @override
  _ClinicServicesLoadFailure get _value =>
      super._value as _ClinicServicesLoadFailure;
}

/// @nodoc
class _$_ClinicServicesLoadFailure implements _ClinicServicesLoadFailure {
  const _$_ClinicServicesLoadFailure();

  @override
  String toString() {
    return 'ClinicServicesState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClinicServicesLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuiltList<ClinicService>? services) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuiltList<ClinicService>? services)? loadSuccess,
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
    required TResult Function(_ClinicServicesInitial value) initial,
    required TResult Function(_ClinicServicesLoadSuccess value) loadSuccess,
    required TResult Function(_ClinicServicesLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClinicServicesInitial value)? initial,
    TResult Function(_ClinicServicesLoadSuccess value)? loadSuccess,
    TResult Function(_ClinicServicesLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ClinicServicesLoadFailure implements ClinicServicesState {
  const factory _ClinicServicesLoadFailure() = _$_ClinicServicesLoadFailure;
}
