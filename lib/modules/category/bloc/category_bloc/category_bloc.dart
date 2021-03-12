import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:category_api/category_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../category.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    final CategoryRepository? categoryRepository,
  })  : assert(categoryRepository != null),
        _categoryRepository = categoryRepository ?? CategoryRepository(),
        super(_CategoryInitial());

  final CategoryRepository _categoryRepository;

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) =>
      event.map(loadStarted: _mapLoadStartedToState);

  Stream<CategoryState> _mapLoadStartedToState(_LoadStarted value) async* {
    yield* _loadStarted(isRefresh: value.isRefresh);
  }

  Stream<CategoryState> _loadStarted({bool? isRefresh}) async* {
    if (!isRefresh!) {
      yield CategoryState.initial();
    }

    try {
      final categoryData = await _categoryRepository.getCategories();
      final categories = categoryData.build();

      yield CategoryState.loadSuccess(categories: categories);
    } catch (_) {
      yield CategoryState.loadFailure();
    }
  }
}
