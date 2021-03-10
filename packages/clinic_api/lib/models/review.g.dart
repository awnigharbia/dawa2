// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['user_id', 'clinic_id', 'createdAt'],
      disallowNullValues: const ['user_id', 'clinic_id']);
  return Review(
    id: json['id'] as String?,
    body: json['body'] as String? ?? '',
    rate: (json['rate'] as num?)?.toDouble() ?? 0.0,
    userId: json['user_id'] as String?,
    clinicId: json['clinic_id'] as String?,
    createdAt: Review.getDateFromTimestamp(json['createdAt'] as Timestamp?),
  );
}

Map<String, dynamic> _$ReviewToJson(Review instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', Review.toNull(instance.id));
  writeNotNull('body', instance.body);
  writeNotNull('rate', instance.rate);
  writeNotNull('user_id', instance.userId);
  writeNotNull('clinic_id', instance.clinicId);
  writeNotNull('createdAt', Review.dateTimetoTimestamp(instance.createdAt));
  return val;
}
