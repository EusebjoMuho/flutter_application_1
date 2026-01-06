// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String,
      patientId: json['patientId'] as String,
      therapistId: json['therapistId'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      status: $enumDecode(_$SessionStatusEnumMap, json['status']),
      type: $enumDecode(_$SessionTypeEnumMap, json['type']),
      price: (json['price'] as num?)?.toDouble(),
      recordingUrl: json['recordingUrl'] as String?,
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'therapistId': instance.therapistId,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'status': _$SessionStatusEnumMap[instance.status]!,
      'type': _$SessionTypeEnumMap[instance.type]!,
      'price': instance.price,
      'recordingUrl': instance.recordingUrl,
    };

const _$SessionStatusEnumMap = {
  SessionStatus.booked: 'booked',
  SessionStatus.cancelled: 'cancelled',
  SessionStatus.completed: 'completed',
};

const _$SessionTypeEnumMap = {
  SessionType.video: 'video',
  SessionType.audio: 'audio',
  SessionType.text: 'text',
};
