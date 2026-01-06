# Firebase setup (MVP)

1. Installare FlutterFire CLI: `dart pub global activate flutterfire_cli`
2. Eseguire `flutterfire configure` nella root del progetto per generare `firebase_options.dart` per le piattaforme target.
3. Se non si usa `flutterfire configure`, assicurarsi di aggiungere le opzioni Firebase per ogni piattaforma ed il file di configurazione nativo (GoogleService-Info.plist / google-services.json).
4. Aggiornare `android/app/build.gradle` e `ios/Runner` come richiesto dalle istruzioni di Firebase.
5. Testare l'inizializzazione con `flutter run` e verificare che `initFirebase()` non lanci eccezioni.

Nota: per produzione, configurare il progetto Firebase con DPA e controlli di accesso adeguati.
