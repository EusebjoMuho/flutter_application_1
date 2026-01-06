import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

/// Initialize Firebase. For a production app use FlutterFire CLI to
/// generate platform-specific `FirebaseOptions` and pass them to
/// [Firebase.initializeApp]. This file provides a simple initialization
/// that works when the platform default configuration is available.
Future<void> initFirebase() async {
  try {
    await Firebase.initializeApp();
  } catch (e, st) {
    if (kDebugMode) {
      // In dev we want to see the error clearly.
      print('Firebase initialization error: $e');
      print(st);
    }
    rethrow;
  }
}
