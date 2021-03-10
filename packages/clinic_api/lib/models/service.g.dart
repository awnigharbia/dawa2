// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicService _$ClinicServiceFromJson(Map<String, dynamic> json) {
  return ClinicService(
    id: json['id'] as String?,
    name: json['name'] as String?,
    imgUrl: json['imgUrl'] as String?,
  );
}

Map<String, dynamic> _$ClinicServiceToJson(ClinicService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imgUrl': instance.imgUrl,
    };
