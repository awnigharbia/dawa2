import 'package:clinic_api/clinic_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user_api/user_api.dart';

class ClinicRepository {
  ClinicRepository({
    ReviewsApiClient? reviewsApiClient,
    UserApiClient? userApiClient,
  })  : _reviewsApiClient = reviewsApiClient ?? ReviewsApiClient(),
        _userApiClient = userApiClient ?? UserApiClient();

  static const _defaultLimit = 3;

  final ReviewsApiClient _reviewsApiClient;
  final UserApiClient _userApiClient;

  DocumentSnapshot? _lastReviewDocument;
  bool _hasMoreReviews = true;

  Future<List<Review>> getReviews(String clinicId,
      {bool isReset = false, int limit = _defaultLimit}) async {
    if (isReset) {
      _lastReviewDocument = null;
      _hasMoreReviews = true;
    }

    if (!_hasMoreReviews) return [];

    final reviewsData =
        await _reviewsApiClient.getClinicReviews(clinicId, _lastReviewDocument);

    if (reviewsData.reviews!.length < limit) {
      _hasMoreReviews = false;
    }

    if (reviewsData.reviews!.isNotEmpty)
      _lastReviewDocument = reviewsData.lastDocument;

    final reviews = mapReviewUsers(reviewsData.reviews!);

    return reviews;
  }

  Future<List<Review>> mapReviewUsers(List<Review> reviews) async {
    List<Review> reviewList = [];

    for (var review in reviews) {
      final userData = await _userApiClient.getUserById(review.userId!);
      final updatedReview = review.copyWith(user: userData);

      reviewList.add(updatedReview);
    }

    return reviewList;
  }
}
