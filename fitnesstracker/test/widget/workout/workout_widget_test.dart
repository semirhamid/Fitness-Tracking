import 'package:bloc_test/bloc_test.dart';
import 'package:fitnesstracker/application/workout/bloc/workout_bloc.dart';

import 'package:fitnesstracker/infrastructure/workouts/workout_dto.dart';
import 'package:fitnesstracker/presentation/admin/workout/workout.dart';
import 'package:fitnesstracker/presentation/admin/workout/workout_admin_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mocktail/mocktail.dart';

class MockWorkoutState extends Mock implements WorkoutState {}

class MockWorkoutEvent extends Mock implements WorkoutEvent {}

class MockWorkoutBloc extends Mock implements WorkoutBloc {}

void main() {
  late MockWorkoutBloc mockWorkoutBloc;
  late MockWorkoutState mockWorkoutState;
  late MockWorkoutEvent mockWorkoutEvent;

  setUpAll(() {
    registerFallbackValue(const WorkoutState.initial());
    registerFallbackValue(const WorkoutState.initial());
  });

  setUp(() {
    mockWorkoutBloc = MockWorkoutBloc();
    mockWorkoutState = MockWorkoutState();
    mockWorkoutEvent = MockWorkoutEvent();
  });

  tearDown(() {
    reset(mockWorkoutBloc);
  });

  testWidgets('renders CircularProgressIndicator while loading',
      (WidgetTester tester) async {
    final heroTag = UniqueKey();
    when(() => mockWorkoutBloc.state).thenReturn(mockWorkoutState);

    await tester.pumpWidget(
      BlocProvider<WorkoutBloc>(
        create: (context) => mockWorkoutBloc,
        child: MaterialApp(
          home: WorkoutManagement(key: heroTag),
        ),
      ),
    );

    // expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
