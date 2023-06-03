import 'package:fitnesstracker/presentation/admin/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AdminDashboard Test', (WidgetTester tester) async {
    // Build the widget under test
    await tester.pumpWidget(
      MaterialApp(
        home: AdminDashboard(),
      ),
    );

    // Verify the presence and properties of the Placeholder widget
    expect(find.byType(Placeholder), findsOneWidget);
  });
}
