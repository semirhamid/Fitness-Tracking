import 'package:fitnesstracker/presentation/user/common/colo_extension.dart';
import 'package:fitnesstracker/presentation/user/workout/widgets/step_detail_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

void main() {
  testWidgets('StepDetailRow Test', (WidgetTester tester) async {
    // Create a test map for the 'sObj' parameter
    final sObj = {
      'no': 1,
      'title': 'Step Title',
      'detail': 'Step Detail',
    };

    // Build the widget under test
    await tester.pumpWidget(
      MaterialApp(
        home: StepDetailRow(
          sObj: sObj,
          isLast: false,
        ),
      ),
    );

    // Verify that the step number is displayed correctly
    expect(find.text('1'), findsOneWidget);

    // Verify that the colored circles are displayed correctly
    expect(find.byType(Container), findsNWidgets(2));
    expect(find.byType(DottedDashedLine), findsOneWidget);

    // Verify that the step title and detail are displayed correctly
    expect(find.text('Step Title'), findsOneWidget);
    expect(find.text('Step Detail'), findsOneWidget);
  });
}
