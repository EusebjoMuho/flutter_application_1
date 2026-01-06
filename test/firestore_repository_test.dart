import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/models/therapist_profile.dart';
import 'package:flutter_application_1/models/session.dart';
import 'package:flutter_application_1/repositories/firestore_repository.dart';

void main() {
  final useEmulator = Platform.environment['FIRESTORE_EMULATOR'] == 'true';

  group('FirestoreRepository (emulator)', () {
    setUpAll(() async {
      if (!useEmulator) return;
      await Firebase.initializeApp();
      FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
    });

    test('CRUD user/profile/session', () async {
      if (!useEmulator) return;
      final repo = FirestoreRepository();
      final user = User(id: 'u-test', email: 'x@test.com', role: 'patient', createdAt: DateTime.now());
      await repo.createUser(user);
      final got = await repo.getUser('u-test');
      expect(got, isNotNull);
      expect(got!.email, equals('x@test.com'));

      final tp = TherapistProfile(id: 'tp-test', userId: 'u-test', approaches: ['CBT']);
      await repo.createTherapistProfile(tp);
      final gotTp = await repo.getTherapistProfile('tp-test');
      expect(gotTp, isNotNull);

      final s = Session(id: 's-test', patientId: 'u-test', therapistId: 'tp-test', startTime: DateTime.now(), status: SessionStatus.booked, type: SessionType.video);
      await repo.createSession(s);
      final gotS = await repo.getSession('s-test');
      expect(gotS, isNotNull);
    }, skip: !useEmulator);
  });
}
