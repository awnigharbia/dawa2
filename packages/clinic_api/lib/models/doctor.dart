import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor.g.dart';

@JsonSerializable(includeIfNull: false)
class Doctor {
  String? id;
  String? name;
  String? imgUrl;
  String? category;

  Doctor({
    this.id,
    this.name,
    this.imgUrl,
    this.category,
  });

  factory Doctor.empty() => Doctor(
      id: '',
      name: "Not availabe",
      imgUrl: "https://i.ibb.co/FVdmDsC/doctor.png",
      category: "");

  factory Doctor.fromJson(String id, Map<String, dynamic> json) =>
      _$DoctorFromJson(json)..id = id;
}
