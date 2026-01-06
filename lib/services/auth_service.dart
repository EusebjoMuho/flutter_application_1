import 'package:firebase_auth/firebase_auth.dart' as fb;
import '../utils/secure_storage.dart';
import '../models/user.dart' as app_user;
import '../repositories/firestore_repository.dart';

class AuthService {
  final fb.FirebaseAuth _auth = fb.FirebaseAuth.instance;
  final FirestoreRepository _repo;

  AuthService({FirestoreRepository? repo}) : _repo = repo ?? firestoreRepository;

  Stream<fb.User?> authStateChanges() => _auth.authStateChanges();

  Future<fb.UserCredential> signInWithEmail(String email, String password) async {
    final cred = await _auth.signInWithEmailAndPassword(email: email, password: password);
    // Optionally store a token or uid in secure storage
    await secureStorage.write('uid', cred.user?.uid ?? '');
    return cred;
  }

  Future<fb.UserCredential> registerWithEmail(String email, String password, {String? name, String role = 'patient'}) async {
    final cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final uid = cred.user?.uid ?? '';
    await secureStorage.write('uid', uid);

    // Create application user record in Firestore
    final now = DateTime.now().toUtc();
    final appUser = app_user.User(id: uid, email: email, name: name, role: role, createdAt: now);
    try {
      await _repo.createUser(appUser);
    } catch (e) {
      // If Firestore write fails, sign out to keep consistency
      await signOut();
      rethrow;
    }

    return cred;
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await secureStorage.delete('uid');
  }
}

final authService = AuthService();
