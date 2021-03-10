part of 'reviews_bloc.dart';

@freezed
abstract class ReviewsState with _$ReviewsState {
  const factory ReviewsState.initial() = _ReviewsInitial;
  const factory ReviewsState.loadSuccess({
    BuiltList<Review>? reviews,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isLoadMore,
  }) = ReviewsLoadSuccess;
  const factory ReviewsState.loadFailure() = _ReviewsLoadFailure;
}
