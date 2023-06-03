import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/http/i_http_client.dart';
import 'package:fitnesstracker/domain/workouts/i_workout_repository.dart';
import 'package:fitnesstracker/infrastructure/http/my_http_client.dart';
import 'package:fitnesstracker/infrastructure/workouts/workout_dto.dart';
import 'package:fitnesstracker/infrastructure/workouts/workout_form_dto.dart';
import 'package:fitnesstracker/infrastructure/workouts/workout_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'workout_unit_test.mocks.dart';

@GenerateMocks([IWorkoutRepository])
void main() {
  late MockIWorkoutRepository mockWorkoutRepository;
  late WorkoutFormDto workoutFormDto;
  late WorkoutDto workoutDto;
  // Workout repository unit test
  // Check for every method in the workout repository
  // Mock the HTTP client
  setUp(() {
    mockWorkoutRepository = MockIWorkoutRepository();
    workoutFormDto = WorkoutFormDto(
      title: 'title',
      description: 'description',
      duration: 1,
      step: 1,
      focus: 'focus',
      image1Url: File(Uri.parse(
              'file:///C:/Users/semha/Videos/localhost_5173_product_details_84.png')
          .path),
      image2Url: File(Uri.parse(
              'file:///C:/Users/semha/Videos/localhost_5173_product_details_84.png')
          .path),
    );
    workoutDto = WorkoutDto(
      id: 1,
      title: 'title',
      description: 'description',
      duration: 1,
      step: 1,
      focus: 'focus',
      image1Url: 'image1Url',
      image2Url: 'image2Url',
    );
  });

  group(
    'WorkoutRepository',
    () {
      test(
        'should return unit when create is successful',
        () async {
          when(mockWorkoutRepository.create(workoutFormDto)).thenAnswer(
            (_) async => right(unit),
          );
          final result = await mockWorkoutRepository.create(workoutFormDto);
          expect(result, right(unit));
        },
      );

      test(
        'should return unit when delete is successful',
        () async {
          when(mockWorkoutRepository.delete(1)).thenAnswer(
            (_) async => right(unit),
          );
          final result = await mockWorkoutRepository.delete(1);
          expect(result, right(unit));
        },
      );

      test(
        'should return unit when update is successful',
        () async {
          when(mockWorkoutRepository.update(workoutFormDto))
              .thenAnswer((_) async => right(unit));
          final result = await mockWorkoutRepository.update(workoutFormDto);
          expect(result, right(unit));
        },
      );

      test(
        'should return unit when getWorkouts is successful',
        () async {
          when(mockWorkoutRepository.getAllWorkout())
              .thenAnswer((_) async => []);
          final result = await mockWorkoutRepository.getAllWorkout();
          expect(result, []);
        },
      );

      test(
        'should return unit when getWorkout is successful',
        () async {
          when(mockWorkoutRepository.getWorkout(1))
              .thenAnswer((_) async => workoutDto);
          final result = await mockWorkoutRepository.getWorkout(1);
          expect(result, workoutDto);
        },
      );
    },
  );
}
