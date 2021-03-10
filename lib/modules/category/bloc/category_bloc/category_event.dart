part of 'category_bloc.dart';

@freezed
abstract class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.loadStarted({
    @Default(false) bool isRefresh,
  }) = _LoadStarted;
}
