// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clinic _$ClinicFromJson(Map<String, dynamic> json) {
  return Clinic(
    id: json['id'] as String?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    imgUrl: json['imgUrl'] as String?,
    location: json['location'] as String?,
    phone: json['phone'] as String?,
    position: json['position'],
    rate: (json['rate'] as num?)?.toDouble(),
    openTime: Clinic._dateTimeFromTimestamp(json['openTime'] as Timestamp?),
    closeTime: Clinic._dateTimeFromTimestamp(json['closeTime'] as Timestamp?),
    category: json['category'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    doctors:
        (json['doctors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    imgCollection: (json['imgCollection'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    services:
        (json['services'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$ClinicToJson(Clinic instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imgUrl': instance.imgUrl,
      'location': instance.location,
      'phone': instance.phone,
      'position': instance.position,
      'rate': instance.rate,
      'openTime': instance.openTime?.toIso8601String(),
      'closeTime': instance.closeTime?.toIso8601String(),
      'category': instance.category,
      'distance': instance.distance,
      'doctors': instance.doctors,
      'imgCollection': instance.imgCollection,
      'services': instance.services,
    };
