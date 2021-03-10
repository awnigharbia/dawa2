import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic.g.dart';

@JsonSerializable()
class Clinic {
  String? id;
  String? name;
  String? description;
  @Default(
      "https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1335&q=80")
  String? imgUrl;
  String? location;
  String? phone;
  dynamic? position;
  @Default(0.0)
  double? rate;
  @JsonKey(fromJson: _dateTimeFromTimestamp)
  DateTime? openTime;
  @JsonKey(fromJson: _dateTimeFromTimestamp)
  DateTime? closeTime;
  String? category;
  double? distance;
  List<String>? doctors;
  List<String>? imgCollection;
  List<String>? services;

  @JsonKey(ignore: true)
  bool? isOpen;

  Clinic({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.location,
    this.phone,
    this.position,
    this.rate,
    this.openTime,
    this.closeTime,
    this.category,
    this.distance,
    this.doctors,
    this.imgCollection,
    this.isOpen,
    this.services,
  });

  factory Clinic.fromJson(
      String id, double distance, Map<String, dynamic> json) {
    return _$ClinicFromJson(json)
      ..id = id
      ..distance = distance;
  }

  static DateTime _dateTimeFromTimestamp(Timestamp? timestamp) {
    return timestamp!.toDate();
  }
}
