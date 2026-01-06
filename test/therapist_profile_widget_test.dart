import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/therapist_profile_edit.dart';

void main() {
  testWidgets('Therapist profile form shows fields and save button', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: TherapistProfileEditScreen()));
    await tester.pumpAndSettle();

    expect(find.byType(TextField), findsNWidgets(7)); // licence country, licence number, approaches, specialties, languages, hourlyRate, bio
    expect(find.text('Salva'), findsOneWidget);
  });
}
