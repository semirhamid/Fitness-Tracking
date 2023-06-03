import 'package:fitnesstracker/injection.dart';
import 'package:fitnesstracker/presentation/register/widget/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fitnesstracker/presentation/register/register_page.dart';
import 'package:injectable/injectable.dart';

void main() {
  group('RegistrationPage', () {
    setUpAll(() {
      configureDependencies(Environment.dev);
    });
    testWidgets('renders RegistrationForm', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: RegistrationPage()));

      expect(find.byType(RegistrationForm), findsOneWidget);
    });

    testWidgets('displays registration text', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: RegistrationPage()));

      expect(find.text('Registration'), findsOneWidget);
    });
  });
}
