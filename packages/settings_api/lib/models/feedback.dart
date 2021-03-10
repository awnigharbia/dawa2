import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback.g.dart';

@JsonSerializable()
class Feedback {
  String title;
  String message;
  @JsonKey(toJson: _dateTimeToTimstamp)
  DateTime createdAt;

  Feedback({
    this.title,
    this.message,
    this.createdAt,
  });

  Map<String, dynamic> toJson() => _$FeedbackToJson(this);

  static Timestamp _dateTimeToTimstamp(DateTime dateTime) =>
      Timestamp.fromDate(dateTime);
}
