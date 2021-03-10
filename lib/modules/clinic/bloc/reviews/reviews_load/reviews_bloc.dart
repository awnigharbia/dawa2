import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../clinic.dart';

part 'reviews_event.dart';
part 'reviews_state.dart';
part 'reviews_bloc.freezed.dart';

class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  ReviewsBloc(
    this.clinicId, {
    final ClinicRepository? clinicRepository,
  })  : assert(clinicRepository != null),
        _clinicRepository = clinicRepository ?? ClinicRepository(),
        super(_ReviewsInitial());

  final String clinicId;
  ClinicRepository _clinicRepository;
  int initialLimit = 3;
  int loadMoreLimit = 5;

  @override
  Stream<ReviewsState> mapEventToState(
    ReviewsEvent event,
  ) =>
      event.map(loadStarted: _mapLoadStartedToState);

  Stream<ReviewsState> _mapLoadStartedToState(_LoadStarted event) async* {
    final currentState = state;
    if (_validateCondition(event, currentState)) {
      if (currentState is _ReviewsInitial) {
        yield* _loadInitial();
      }

      if (event is _LoadStarted && event.isRefresh) {
        yield* _loadRefresh();
      }

      if (currentState is ReviewsLoadSuccess && !event.isRefresh) {
        yield* _loadMore(currentState);
      }
    }
  }

  Stream<ReviewsState> _loadInitial() async* {
    try {
      final reviewsData =
          await _clinicRepository.getReviews(clinicId, isReset: true);

      final reviews = reviewsData.build();

      final hasReachedMax = reviews.length < initialLimit;

      yield ReviewsState.loadSuccess(
          reviews: reviews, hasReachedMax: hasReachedMax);
    } catch (e) {
      print(e.runtimeType);
      yield ReviewsState.loadFailure();
    }
  }

  Stream<ReviewsState> _loadMore(ReviewsLoadSuccess currentState) async* {
    yield currentState.copyWith(isLoadMore: true);
    try {
      final reviewsData = await _clinicRepository.getReviews(clinicId);

      final reviews =
          currentState.reviews!.rebuild((b) => b.addAll(reviewsData));

      var hasReachedMax = reviewsData.length < initialLimit;

      yield reviewsData.isEmpty
          ? currentState.copyWith(hasReachedMax: true)
          : ReviewsState.loadSuccess(
              reviews: reviews,
              hasReachedMax: hasReachedMax,
              isLoadMore: false);
    } catch (_) {
      yield ReviewsState.loadFailure();
    }
  }

  Stream<ReviewsState> _loadRefresh() async* {
    try {
      final reviewsData =
          await _clinicRepository.getReviews(clinicId, isReset: true);

      final hasReachedMax = reviewsData.length < initialLimit;

      yield ReviewsState.loadSuccess(
          reviews: reviewsData.build(), hasReachedMax: hasReachedMax);
    } catch (e) {
      print(e);
      yield ReviewsState.loadFailure();
    }
  }

  bool _validateCondition(event, ReviewsState currentState) {
    final isLoadStarted = event is _LoadStarted;
    return isLoadStarted && !_hasReachedMax(currentState) ||
        isLoadStarted && event.isRefresh;
  }

  bool _hasReachedMax(ReviewsState state) =>
      state is ReviewsLoadSuccess && state.hasReachedMax;
}
