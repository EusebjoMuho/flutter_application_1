import 'package:freezed_annotation/freezed_annotation.dart';

part 'therapist_profile.freezed.dart';
part 'therapist_profile.g.dart';

@freezed
class TherapistProfile with _$TherapistProfile {
  const factory TherapistProfile({
    required String id,
    required String userId,
    String? licenceCountry,
    String? licenceNumber,
    List<String>? approaches,
    List<String>? specialties,
    String? bio,
    List<String>? languages,
    double? hourlyRate,
  }) = _TherapistProfile;

  factory TherapistProfile.fromJson(Map<String, dynamic> json) => _$TherapistProfileFromJson(json);
}
