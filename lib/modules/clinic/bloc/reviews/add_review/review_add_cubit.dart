import 'package:authentication_api/authentication_api.dart';
import 'package:bloc/bloc.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/clinic/models/comment.dart';

part 'review_add_state.dart';
part 'review_add_cubit.freezed.dart';

class ReviewAddCubit extends Cubit<ReviewAddState> {
  ReviewAddCubit(this._reviewsRepository)
      : assert(_reviewsRepository != null),
        super(ReviewAddState());

  final ReviewsApiClient _reviewsRepository;

  Future addReview(String clinicId) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final user = AuthenticationApiClient().currentUser;

      final newReview = Review(
          body: state.comment.value,
          rate: state.rate,
          createdAt: DateTime.now(),
          userId: user.uid,
          clinicId: clinicId);

      await _reviewsRepository.addReview(newReview);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }

  void onRate(double rate) => emit(state.copyWith(rate: rate));

  void onComment(String newComment) {
    final comment = Comment.dirty(newComment);

    emit(state.copyWith(comment: comment, status: Formz.validate([comment])));
  }
}
