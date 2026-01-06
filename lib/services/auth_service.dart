import 'package:firebase_auth/firebase_auth.dart';
import '../utils/secure_storage.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> authStateChanges() => _auth.authStateChanges();

  Future<UserCredential> signInWithEmail(String email, String password) async {
    final cred = await _auth.signInWithEmailAndPassword(email: email, password: password);
    // Optionally store a token or uid in secure storage
    await secureStorage.write('uid', cred.user?.uid ?? '');
    return cred;
  }

  Future<UserCredential> registerWithEmail(String email, String password) async {
    final cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    await secureStorage.write('uid', cred.user?.uid ?? '');
    return cred;
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await secureStorage.delete('uid');
  }
}

final authService = AuthService();
