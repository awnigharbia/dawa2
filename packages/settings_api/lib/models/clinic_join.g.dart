// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_join.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicJoin _$ClinicJoinFromJson(Map<String, dynamic> json) {
  return ClinicJoin(
    clinicName: json['clinicName'] as String,
    clinicOwner: json['clinicOwner'] as String,
    contactNumber: json['contactNumber'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$ClinicJoinToJson(ClinicJoin instance) =>
    <String, dynamic>{
      'clinicName': instance.clinicName,
      'clinicOwner': instance.clinicOwner,
      'contactNumber': instance.contactNumber,
      'createdAt': ClinicJoin._dateTimeToTimestamp(instance.createdAt),
    };
