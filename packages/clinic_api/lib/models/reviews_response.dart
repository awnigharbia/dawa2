import 'package:cloud_firestore/cloud_firestore.dart';

import 'review.dart';

class ReviewsResponse {
  final List<Review>? reviews;
  final DocumentSnapshot? lastDocument;

  ReviewsResponse({
    this.reviews,
    this.lastDocument,
  });
}
