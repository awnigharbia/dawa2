import 'package:cloud_firestore/cloud_firestore.dart';

import '../clinic_api.dart';

class ReviewsApiClient {
  final FirebaseFirestore? _firebaseFirestore;
  CollectionReference? _reviewsCollection;

  ReviewsApiClient({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance {
    _reviewsCollection = _firebaseFirestore!.collection("clinics");
  }

  Future<ReviewsResponse> getClinicReviews(
      String clinicId, DocumentSnapshot? startAt,
      {int limit = 3}) async {
    QuerySnapshot snapshot;

    if (startAt != null) {
      snapshot = await _reviewsCollection!
          .doc(clinicId)
          .collection("reviews")
          .startAfterDocument(startAt)
          .limit(limit)
          .get();
    } else {
      snapshot = await _reviewsCollection!
          .doc(clinicId)
          .collection("reviews")
          .limit(limit)
          .get();
    }

    final reviews = snapshot.docs.map(_mapReviews).toList();

    return ReviewsResponse(
      reviews: reviews,
      lastDocument: snapshot.docs.isNotEmpty ? snapshot.docs.last : null,
    );
  }

  Future addReview(Review newReview) async => await _reviewsCollection!
      .doc(newReview.clinicId)
      .collection("reviews")
      .add(newReview.toJson());

  Review _mapReviews(review) => Review.fromJson(review.id, review.data());
}
