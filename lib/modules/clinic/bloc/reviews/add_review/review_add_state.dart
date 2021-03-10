part of 'review_add_cubit.dart';

@freezed
abstract class ReviewAddState with _$ReviewAddState {
  const factory ReviewAddState({
    @Default(Comment.pure()) Comment comment,
    @Default(1.0) double rate,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _ReviewAddState;
}
