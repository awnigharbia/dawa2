part of 'location_bloc.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.initial() = _LocationInitial;
  const factory LocationState.loadSuccess(double latitude, double longitude) =
      LocationLoadSuccess;
  const factory LocationState.loadFailure() = _LocationLoadFailure;
}
