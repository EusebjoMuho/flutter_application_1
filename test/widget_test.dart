import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('MainApp builds and shows login', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());
    await tester.pumpAndSettle();
    expect(find.text('Login'), findsOneWidget);
  });
}
