import 'package:flutter/material.dart';
import '../repositories/firestore_repository.dart';
import '../models/therapist_profile.dart';

class TherapistSearchScreen extends StatefulWidget {
  const TherapistSearchScreen({super.key});

  @override
  State<TherapistSearchScreen> createState() => _TherapistSearchScreenState();
}

class _TherapistSearchScreenState extends State<TherapistSearchScreen> {
  final _approachController = TextEditingController();
  List<TherapistProfile> _results = [];
  bool _loading = false;

  Future<void> _search() async {
    setState(() { _loading = true; _results = []; });
    final res = await firestoreRepository.searchTherapists(approach: _approachController.text.trim().isEmpty ? null : _approachController.text.trim());
    setState(() { _results = res; _loading = false; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cerca Terapeuti')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _approachController, decoration: const InputDecoration(labelText: 'Approccio (es. CBT)')),
            const SizedBox(height: 8),
            ElevatedButton(onPressed: _search, child: const Text('Cerca')),
            const SizedBox(height: 16),
            _loading ? const CircularProgressIndicator() : Expanded(child: ListView.builder(itemCount: _results.length, itemBuilder: (c,i){ final t = _results[i]; return ListTile(title: Text(t.bio ?? t.id), subtitle: Text('Approcci: ${t.approaches?.join(', ') ?? ''}')); }))
          ],
        ),
      ),
    );
  }
}
