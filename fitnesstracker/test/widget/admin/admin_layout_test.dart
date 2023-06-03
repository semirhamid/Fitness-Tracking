import 'package:fitnesstracker/presentation/admin/admin_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AdminLayout Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AdminLayout(),
      ),
    );

    // Verify the presence of AppBar
    expect(find.byType(AppBar), findsOneWidget);

    // Verify the presence of welcome text
    expect(find.text('Welcome, Admin!'), findsOneWidget);

    // Verify the presence of description text
    expect(find.text('This is the admin layout with a beautiful design.'), findsOneWidget);

    // Example assertion: Verify the presence of a specific icon in the AppBar
    expect(find.byIcon(Icons.menu), findsOneWidget);
  });
}
