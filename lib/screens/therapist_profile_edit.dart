import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;
import '../models/therapist_profile.dart';
import '../repositories/firestore_repository.dart';

class TherapistProfileEditScreen extends StatefulWidget {
  const TherapistProfileEditScreen({super.key});

  @override
  State<TherapistProfileEditScreen> createState() => _TherapistProfileEditScreenState();
}

class _TherapistProfileEditScreenState extends State<TherapistProfileEditScreen> {
  final _licenceCountry = TextEditingController();
  final _licenceNumber = TextEditingController();
  final _approaches = TextEditingController();
  final _specialties = TextEditingController();
  final _bio = TextEditingController();
  final _languages = TextEditingController();
  final _hourlyRate = TextEditingController();
  bool _loading = false;

  Future<void> _save() async {
    final uid = fb.FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Devi essere loggato per creare un profilo terapeuta')));
      return;
    }

    setState(() => _loading = true);
    try {
      final profile = TherapistProfile(
        id: uid,
        userId: uid,
        licenceCountry: _licenceCountry.text.trim().isEmpty ? null : _licenceCountry.text.trim(),
        licenceNumber: _licenceNumber.text.trim().isEmpty ? null : _licenceNumber.text.trim(),
        approaches: _approaches.text.trim().isEmpty ? null : _approaches.text.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList(),
        specialties: _specialties.text.trim().isEmpty ? null : _specialties.text.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList(),
        bio: _bio.text.trim().isEmpty ? null : _bio.text.trim(),
        languages: _languages.text.trim().isEmpty ? null : _languages.text.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList(),
        hourlyRate: _hourlyRate.text.trim().isEmpty ? null : double.tryParse(_hourlyRate.text.trim()),
      );

      await firestoreRepository.createTherapistProfile(profile);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Profilo terapeuta salvato')));
      Navigator.of(context).pop();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Errore salvataggio: $e')));
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _licenceCountry.dispose();
    _licenceNumber.dispose();
    _approaches.dispose();
    _specialties.dispose();
    _bio.dispose();
    _languages.dispose();
    _hourlyRate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profilo Terapeuta')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _licenceCountry, decoration: const InputDecoration(labelText: 'Paese Licenza')),
            const SizedBox(height: 8),
            TextField(controller: _licenceNumber, decoration: const InputDecoration(labelText: 'Numero Licenza')),
            const SizedBox(height: 8),
            TextField(controller: _approaches, decoration: const InputDecoration(labelText: 'Approcci (comma-separated)')),
            const SizedBox(height: 8),
            TextField(controller: _specialties, decoration: const InputDecoration(labelText: 'Specialità (comma-separated)')),
            const SizedBox(height: 8),
            TextField(controller: _languages, decoration: const InputDecoration(labelText: 'Lingue (comma-separated)')),
            const SizedBox(height: 8),
            TextField(controller: _hourlyRate, decoration: const InputDecoration(labelText: 'Tariffa oraria (EUR)')),
            const SizedBox(height: 8),
            TextField(controller: _bio, decoration: const InputDecoration(labelText: 'Bio'), maxLines: 4),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: _loading ? null : _save, child: _loading ? const CircularProgressIndicator() : const Text('Salva')),
          ],
        ),
      ),
    );
  }
}
