import 'package:bloc_test/bloc_test.dart';
import 'package:fitnesstracker/application/auth/auth_bloc.dart';
import 'package:fitnesstracker/presentation/admin/drawer/admin_drawer.dart';
import 'package:fitnesstracker/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  testWidgets('AdminDrawer Test', (WidgetTester tester) async {
    // Mock AuthBloc
    final authBloc = MockAuthBloc();

    // Build the widget under test
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider.value(
          value: authBloc,
          child: AdminDrawer(),
        ),
      ),
    );

    // Verify the presence and properties of the DrawerHeader widget
    expect(find.byType(DrawerHeader), findsOneWidget);
    expect(find.text('Admin Menu'), findsOneWidget);

    // Verify the presence and properties of the ListTile widgets
    expect(find.byIcon(Icons.dashboard), findsOneWidget);
    expect(find.byIcon(Icons.sports_gymnastics), findsOneWidget);
    expect(find.byIcon(Icons.food_bank), findsOneWidget);
    expect(find.byIcon(Icons.map_outlined), findsOneWidget);
    expect(find.byIcon(Icons.admin_panel_settings), findsOneWidget);
    expect(find.byIcon(Icons.logout), findsOneWidget);
  });
}

// Mock AuthBloc
class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}
