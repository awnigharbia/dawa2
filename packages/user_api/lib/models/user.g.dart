// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['createdAt']);
  return User(
    id: json['id'] as String?,
    name: json['name'] as String?,
    photo: json['photo'] as String?,
    phone: json['phone'] as String?,
    createdAt: User.getDateFromTimestamp(json['createdAt'] as Timestamp?),
    isNew: json['isNew'] as bool?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'phone': instance.phone,
      'createdAt': User.dateTimetoTimestamp(instance.createdAt),
      'isNew': instance.isNew,
    };
