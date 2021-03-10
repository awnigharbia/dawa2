import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../category.dart';

part 'category_detail_event.dart';
part 'category_detail_state.dart';
part 'category_detail_bloc.freezed.dart';

class CategoryDetailBloc
    extends Bloc<CategoryDetailEvent, CategoryDetailState> {
  CategoryDetailBloc(
    this.categoryId, {
    final CategoryRepository? categoryRepository,
  })  : assert(categoryRepository != null),
        _categoryRepository = categoryRepository ?? CategoryRepository(),
        super(_CategoryDetailInitial());

  int fetchLimit = 10;
  final CategoryRepository _categoryRepository;
  final String categoryId;

  @override
  Stream<CategoryDetailState> mapEventToState(
    CategoryDetailEvent event,
  ) =>
      event.map(loadStarted: _mapLoadStartedToState);

  Stream<CategoryDetailState> _mapLoadStartedToState(
      _CategoryDetailLoadStarted event) async* {
    final currentState = state;
    if (_validateCondition(event, currentState)) {
      if (currentState is _CategoryDetailInitial) {
        yield* _loadInitial();
      }

      if (currentState is _CategoryDetailLoadSuccess && !event.isRefresh) {
        yield* _loadMore(currentState);
      }

      if (event is _CategoryDetailLoadStarted && event.isRefresh) {
        yield* _loadRefresh();
      }
    }
  }

  Stream<CategoryDetailState> _loadInitial() async* {
    try {
      final clinics = await _categoryRepository.getClinicsByCategory(
          categoryId, fetchLimit);

      yield CategoryDetailState.loadSuccess(
          clinics: clinics.build(),
          hasReachedMax: _categoryRepository.hasReachedMax);
    } catch (e) {
      yield CategoryDetailState.loadFailure();
    }
  }

  Stream<CategoryDetailState> _loadMore(
      _CategoryDetailLoadSuccess currentState) async* {
    try {
      final clinicsData = await _categoryRepository.getClinicsByCategory(
          categoryId, fetchLimit);

      final clinics =
          currentState.clinics!.rebuild((b) => b.addAll(clinicsData));

      yield clinicsData.isEmpty
          ? currentState.copyWith(hasReachedMax: true)
          : CategoryDetailState.loadSuccess(
              clinics: clinics,
              hasReachedMax: _categoryRepository.hasReachedMax);
    } catch (_) {
      yield CategoryDetailState.loadFailure();
    }
  }

  Stream<CategoryDetailState> _loadRefresh() async* {
    try {
      final clinics = await _categoryRepository
          .getClinicsByCategory(categoryId, fetchLimit, isReset: true);

      yield CategoryDetailState.loadSuccess(
          clinics: clinics.build(),
          hasReachedMax: _categoryRepository.hasReachedMax);
    } catch (_) {
      yield CategoryDetailState.loadFailure();
    }
  }

  bool _validateCondition(event, currentState) {
    final isLoadStarted = event is _CategoryDetailLoadStarted;
    return isLoadStarted && !_hasReachedMax(currentState) ||
        isLoadStarted && event.isRefresh;
  }

  bool _hasReachedMax(CategoryDetailState state) =>
      state is _CategoryDetailLoadSuccess && state.hasReachedMax;
}
