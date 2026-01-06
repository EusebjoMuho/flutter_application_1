// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TherapistProfileImpl _$$TherapistProfileImplFromJson(
  Map<String, dynamic> json,
) => _$TherapistProfileImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  licenceCountry: json['licenceCountry'] as String?,
  licenceNumber: json['licenceNumber'] as String?,
  approaches: (json['approaches'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  specialties: (json['specialties'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  bio: json['bio'] as String?,
  languages: (json['languages'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  hourlyRate: (json['hourlyRate'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$TherapistProfileImplToJson(
  _$TherapistProfileImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'licenceCountry': instance.licenceCountry,
  'licenceNumber': instance.licenceNumber,
  'approaches': instance.approaches,
  'specialties': instance.specialties,
  'bio': instance.bio,
  'languages': instance.languages,
  'hourlyRate': instance.hourlyRate,
};
