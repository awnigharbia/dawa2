import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic_join.g.dart';

@JsonSerializable()
class ClinicJoin {
  String clinicName;
  String clinicOwner;
  String contactNumber;
  @JsonKey(toJson: _dateTimeToTimestamp)
  DateTime createdAt;

  ClinicJoin({
    this.clinicName,
    this.clinicOwner,
    this.contactNumber,
    this.createdAt,
  });

  Map<String, dynamic> toJson() => _$ClinicJoinToJson(this);

  static Timestamp _dateTimeToTimestamp(DateTime dateTime) =>
      Timestamp.fromDate(dateTime);
}
