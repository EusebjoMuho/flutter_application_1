# Firestore Setup & Emulator (MVP)

Per sviluppo locale è consigliato usare il Firebase Emulator Suite.

1. Installa Firebase CLI: https://firebase.google.com/docs/cli
2. Avvia gli emulatori (nella root del progetto):
   - `firebase init emulators` (abilita Firestore e Auth)
   - `firebase emulators:start --only firestore,auth`
3. Per eseguire i test locali che interagiscono con Firestore, esporta la variabile d'ambiente prima di eseguire i test:
   - PowerShell: `$env:FIRESTORE_EMULATOR = 'true'`
   - Linux/macOS: `export FIRESTORE_EMULATOR=true`
4. I test che richiedono l'emulatore sono disabilitati a runtime se la variabile non è impostata.

Esempio di regole `firestore.rules` (semplice punto di partenza — ADATTARE per produzione):

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{userId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
    match /therapists/{tid} {
      allow read: if true;
      allow write: if request.auth != null && request.auth.token.admin == true; // admin-only writes
    }
    match /sessions/{sid} {
      allow read, write: if request.auth != null && (request.auth.uid == resource.data.patientId || request.auth.uid == resource.data.therapistId);
    }
  }
}
```

Nota: per produzione, definire una policy di accesso più restrittiva e audit logging.
