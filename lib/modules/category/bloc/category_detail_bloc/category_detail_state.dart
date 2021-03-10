part of 'category_detail_bloc.dart';

@freezed
abstract class CategoryDetailState with _$CategoryDetailState {
  const factory CategoryDetailState.initial() = _CategoryDetailInitial;
  const factory CategoryDetailState.loadSuccess({
    BuiltList<Clinic>? clinics,
    @Default(false) bool hasReachedMax,
  }) = _CategoryDetailLoadSuccess;
  const factory CategoryDetailState.loadFailure() = _CategoryDetailLoadFailure;
}
