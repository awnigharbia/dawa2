import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? id;
  final String? name;
  final String? photo;
  final String? phone;
  @JsonKey(
      fromJson: getDateFromTimestamp,
      toJson: dateTimetoTimestamp,
      required: true)
  final DateTime? createdAt;
  final bool? isNew;

  User({
    this.id,
    this.name,
    this.photo,
    this.phone,
    this.createdAt,
    this.isNew,
  });

  Map<String, dynamic> toJson() => _$UserToJson(this);

  factory User.fromJson(String id, Map<String, dynamic> json) =>
      _$UserFromJson(json)..id = id;

  static Timestamp dateTimetoTimestamp(DateTime? date) =>
      Timestamp.fromDate(date!);

  static DateTime getDateFromTimestamp(Timestamp? timestamp) =>
      timestamp!.toDate();

  static User empty =
      User(id: '', name: '', photo: '', phone: '', createdAt: DateTime.now());
}
