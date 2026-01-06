import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';
import '../models/therapist_profile.dart';
import '../models/session.dart';

class FirestoreRepository {
  final FirebaseFirestore _db;

  FirestoreRepository({FirebaseFirestore? instance}) : _db = instance ?? FirebaseFirestore.instance;

  // Users
  Future<void> createUser(User user) async {
    await _db.collection('users').doc(user.id).set(user.toJson());
  }

  Future<User?> getUser(String id) async {
    final snap = await _db.collection('users').doc(id).get();
    if (!snap.exists) return null;
    return User.fromJson(snap.data()!);
  }

  Future<void> updateUser(User user) async {
    await _db.collection('users').doc(user.id).update(user.toJson());
  }

  // Therapist profiles
  Future<void> createTherapistProfile(TherapistProfile profile) async {
    await _db.collection('therapists').doc(profile.id).set(profile.toJson());
  }

  Future<TherapistProfile?> getTherapistProfile(String id) async {
    final snap = await _db.collection('therapists').doc(id).get();
    if (!snap.exists) return null;
    return TherapistProfile.fromJson(snap.data()!);
  }

  // Sessions
  Future<void> createSession(Session session) async {
    await _db.collection('sessions').doc(session.id).set(session.toJson());
  }

  Future<Session?> getSession(String id) async {
    final snap = await _db.collection('sessions').doc(id).get();
    if (!snap.exists) return null;
    return Session.fromJson(snap.data()!);
  }

  Future<List<TherapistProfile>> searchTherapists({String? approach, String? language}) async {
    Query collection = _db.collection('therapists');
    if (approach != null) collection = collection.where('approaches', arrayContains: approach);
    if (language != null) collection = collection.where('languages', arrayContains: language);
    final snaps = await collection.limit(50).get();
    return snaps.docs.map((d) => TherapistProfile.fromJson(d.data())).toList();
  }
}

final firestoreRepository = FirestoreRepository();
