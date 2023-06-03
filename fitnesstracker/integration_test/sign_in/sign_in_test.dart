import 'package:flutter/material.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fitnesstracker/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Integration Test', () {
    testWidgets('Test Sign In', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Find the email and password TextFields by their keys or any other locator method
      final emailTextFieldFinder = find.byKey(const Key('emailField'));
      expect(emailTextFieldFinder, findsOneWidget);
      final passwordTextFieldFinder = find.byKey(const Key('passwordField'));
      expect(passwordTextFieldFinder, findsOneWidget);

      // Find the Sign In button by its key or any other locator method
      final signInButtonFinder = find.byKey(const Key('signInButton'));

      // Enter email and password
      await tester.enterText(emailTextFieldFinder, 'admin@gmail.com');
      await tester.enterText(passwordTextFieldFinder, 'Admin123#');

      // Tap the Sign In button
      await tester.tap(signInButtonFinder);
      await tester.pumpAndSettle();

      await Future.delayed(const Duration(seconds: 5));
    });
  });
}
