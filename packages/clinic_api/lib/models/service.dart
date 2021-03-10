import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.g.dart';

@JsonSerializable()
class ClinicService {
  String? id;
  String? name;
  String? imgUrl;

  ClinicService({
    this.id,
    this.name,
    this.imgUrl,
  });

  factory ClinicService.fromJson(String id, Map<String, dynamic> json) =>
      _$ClinicServiceFromJson(json)..id = id;
}
