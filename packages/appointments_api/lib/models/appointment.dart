import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.g.dart';

@JsonSerializable()
class Appointment {
  @JsonKey(toJson: toNull, includeIfNull: false)
  String id;
  String userId;
  String clinicId;
  String serviceId;
  @JsonKey(toJson: _dateTimeToTimestamp, fromJson: _timestampToDateTime)
  DateTime appointmentDate;
  @JsonKey(defaultValue: true)
  bool active;

  Appointment({
    this.id,
    this.userId,
    this.clinicId,
    this.serviceId,
    this.appointmentDate,
    this.active,
  });

  factory Appointment.fromJson(String id, Map<String, dynamic> json) =>
      _$AppointmentFromJson(json)..id = id;

  Map<String, dynamic> toJson() => _$AppointmentToJson(this);

  static _dateTimeToTimestamp(DateTime date) => Timestamp.fromDate(date);

  static _timestampToDateTime(Timestamp timestamp) => timestamp.toDate();

  static toNull(_) => null;
}
