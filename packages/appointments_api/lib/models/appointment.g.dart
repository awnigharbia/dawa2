// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return Appointment(
    id: json['id'] as String,
    userId: json['userId'] as String,
    clinicId: json['clinicId'] as String,
    serviceId: json['serviceId'] as String,
    appointmentDate:
        Appointment._timestampToDateTime(json['appointmentDate'] as Timestamp),
    active: json['active'] as bool ?? true,
  );
}

Map<String, dynamic> _$AppointmentToJson(Appointment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', Appointment.toNull(instance.id));
  val['userId'] = instance.userId;
  val['clinicId'] = instance.clinicId;
  val['serviceId'] = instance.serviceId;
  val['appointmentDate'] =
      Appointment._dateTimeToTimestamp(instance.appointmentDate);
  val['active'] = instance.active;
  return val;
}
