import 'package:fitnesstracker/presentation/user/common/widgets/icon_title_next_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fitnesstracker/presentation/user/common/colo_extension.dart';

void main() {
  testWidgets('IconTitleNextRow Test', (WidgetTester tester) async {
    // Define test data
    const String title = 'Test Title';
    const String time = '10:00 AM';
    final VoidCallback onPressed = () {};
    final Color color = Colors.blue;

    // Build the widget under test
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: IconTitleNextRow(
            icon: 'assets/img/f_1.png',
            title: title,
            time: time,
            onPressed: onPressed,
            color: color,
          ),
        ),
      ),
    );

    // Verify the presence and properties of the widget's children
    expect(find.byType(InkWell), findsOneWidget);
    expect(find.byType(Container), findsWidgets);
    expect(find.byType(Row), findsOneWidget);
    expect(find.byType(Image), findsNWidgets(2));
    expect(find.text(title), findsOneWidget);
    expect(find.text(time), findsOneWidget);
  });
}
