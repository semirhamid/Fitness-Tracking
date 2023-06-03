// import 'package:fitnesstracker/infrastructure/workouts/workout_dto.dart';
// import 'package:fitnesstracker/presentation/user/workout/workout_details.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   testWidgets('Test WorkoutDetailScreen widget', (WidgetTester tester) async {
//     // Build the widget and trigger a frame
//     await tester.pumpWidget(
//       const MaterialApp(
//         home: WorkoutDetailsView(
//             workoutObj: WorkoutDetailObj(
//           planTypeId: 12,
//           day: 1,
//           workout: WorkoutDto(
//               id: 0,
//               focus: "biceps",
//               step: 30,
//               description: 'description',
//               image1Url: "ashusd",
//               duration: 0,
//               image2Url: 'wad',
//               title: "ads"),
//         )),
//       ),
//     );
//   });
// }

import 'dart:io';

import 'package:fitnesstracker/infrastructure/workouts/workout_dto.dart';
import 'package:fitnesstracker/presentation/user/workout/workout_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockHttpClient extends Mock implements HttpClient {}

void main() {
  testWidgets('Workout Detail Screen Test', (WidgetTester tester) async {
    // Create a test instance of the WorkoutDto class
    WorkoutDto workout = WorkoutDto(
        id: 1,
        title: 'Workout Title',
        image1Url: 'https://example.com/workout.png',
        description: 'Workout description',
        duration: 12,
        focus: '',
        image2Url: '',
        step: 10);

    // Create a test instance of the WorkoutDetailObj class
    WorkoutDetailObj workoutObj = WorkoutDetailObj(
      planTypeId: 1,
      day: 1,
      workout: workout,
    );

    // Build the widget under test
    await tester.pumpWidget(
      MaterialApp(
        home: WorkoutDetailsView(
          workoutObj: workoutObj,
        ),
      ),
    );

    // Verify that the app bar is displayed correctly
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
    expect(find.byIcon(Icons.more_vert), findsOneWidget);

    // Verify that the workout image is displayed correctly
    expect(find.byType(Image), findsOneWidget);
    // Add more verification for other widgets and interactions as needed
  });
}
