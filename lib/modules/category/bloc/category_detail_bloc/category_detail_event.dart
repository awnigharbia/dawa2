part of 'category_detail_bloc.dart';

@freezed
abstract class CategoryDetailEvent with _$CategoryDetailEvent {
  const factory CategoryDetailEvent.loadStarted({@Default(false) isRefresh}) =
      _CategoryDetailLoadStarted;
}
