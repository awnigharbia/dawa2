// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return Doctor(
    id: json['id'] as String?,
    name: json['name'] as String?,
    imgUrl: json['imgUrl'] as String?,
    category: json['category'] as String?,
  );
}

Map<String, dynamic> _$DoctorToJson(Doctor instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('imgUrl', instance.imgUrl);
  writeNotNull('category', instance.category);
  return val;
}
