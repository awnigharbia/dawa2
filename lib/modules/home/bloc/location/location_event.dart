part of 'location_bloc.dart';

@freezed
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.started() = _LocationStarted;
  const factory LocationEvent.requestPermission() = _RequestPermissionStarted;
}
