part of 'reviews_bloc.dart';

@freezed
abstract class ReviewsEvent with _$ReviewsEvent {
  const factory ReviewsEvent.loadStarted({
    @Default(false) bool isRefresh,
  }) = _LoadStarted;
}
