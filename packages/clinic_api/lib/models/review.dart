import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_api/user_api.dart';

part 'review.g.dart';

@JsonSerializable(includeIfNull: false)
class Review {
  @JsonKey(toJson: toNull, includeIfNull: false)
  String? id;
  @JsonKey(defaultValue: "")
  final String? body;
  @JsonKey(defaultValue: 0.0)
  final double? rate;
  @JsonKey(name: "user_id", required: true, disallowNullValue: true)
  final String? userId;
  @JsonKey(name: "clinic_id", required: true, disallowNullValue: true)
  final String? clinicId;
  @JsonKey(
      fromJson: getDateFromTimestamp,
      toJson: dateTimetoTimestamp,
      required: true)
  final DateTime? createdAt;
  @JsonKey(ignore: true)
  User? user;

  Review({
    this.id,
    this.body,
    this.rate,
    this.userId,
    this.clinicId,
    this.createdAt,
    this.user,
  });

  static toNull(_) => null;

  static Timestamp dateTimetoTimestamp(DateTime? date) =>
      Timestamp.fromDate(date!);

  static DateTime getDateFromTimestamp(Timestamp? timestamp) =>
      timestamp!.toDate();

  factory Review.fromJson(String id, Map<String, dynamic> json) =>
      _$ReviewFromJson(json)..id = id;

  Map<String, dynamic> toJson() => _$ReviewToJson(this);

  Review copyWith({
    String? id,
    String? body,
    double? rate,
    String? userId,
    String? clinicId,
    DateTime? createdAt,
    User? user,
  }) {
    return Review(
      id: id ?? this.id,
      body: body ?? this.body,
      rate: rate ?? this.rate,
      userId: userId ?? this.userId,
      clinicId: clinicId ?? this.clinicId,
      createdAt: createdAt ?? this.createdAt,
      user: user ?? this.user,
    );
  }
}
