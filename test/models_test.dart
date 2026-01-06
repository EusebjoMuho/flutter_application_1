import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/models/therapist_profile.dart';
import 'package:flutter_application_1/models/session.dart';

void main() {
  test('User serialization', () {
    final user = User(id: 'u1', email: 'a@b.com', name: 'Test', role: 'patient', createdAt: DateTime.parse('2020-01-01T00:00:00Z'));
    final json = user.toJson();
    final restored = User.fromJson(json);
    expect(restored, equals(user));
  });

  test('TherapistProfile serialization', () {
    final tp = TherapistProfile(id: 't1', userId: 'u2', approaches: ['CBT'], specialties: ['Anxiety'], languages: ['it'], hourlyRate: 50.0);
    final restored = TherapistProfile.fromJson(tp.toJson());
    expect(restored, equals(tp));
  });

  test('Session serialization', () {
    final s = Session(id: 's1', patientId: 'u1', therapistId: 't1', startTime: DateTime.parse('2023-01-01T10:00:00Z'), status: SessionStatus.booked, type: SessionType.video);
    final restored = Session.fromJson(s.toJson());
    expect(restored, equals(s));
  });
}
