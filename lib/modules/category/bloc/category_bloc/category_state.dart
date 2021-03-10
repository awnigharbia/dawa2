part of 'category_bloc.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _CategoryInitial;
  const factory CategoryState.loadSuccess({
    BuiltList<Category>? categories,
  }) = _CategoryLoadSuccess;
  const factory CategoryState.loadFailure() = _CategoryLoadFailure;
}
