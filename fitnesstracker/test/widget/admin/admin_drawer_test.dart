import 'package:fitnesstracker/injection.dart';
import 'package:fitnesstracker/presentation/admin/drawer/admin_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

class MockGoRouter extends Mock implements GoRouter {}

void main() {  
  setUpAll(() {
    configureDependencies(Environment.dev);
  });

  testWidgets('AdminDrawer displays correct menu items', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AdminDrawer(),
      ),
    );

    // Verify the presence of the DrawerHeader
    expect(find.byType(DrawerHeader), findsOneWidget);

    // Verify the presence of the ListTile widgets
    expect(find.byType(ListTile), findsNWidgets(3));

    // Verify the correct leading icons and titles of ListTile widgets
    expect(find.widgetWithIcon(ListTile, Icons.dashboard), findsOneWidget);
    expect(find.widgetWithIcon(ListTile, Icons.settings), findsOneWidget);
    expect(find.widgetWithIcon(ListTile, Icons.sports_gymnastics), findsOneWidget);

    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
    expect(find.text('Workouts'), findsOneWidget);
  });
}
