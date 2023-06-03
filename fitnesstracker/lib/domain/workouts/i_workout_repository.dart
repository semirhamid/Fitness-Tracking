import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/workouts/workout_failures.dart';
import 'package:fitnesstracker/infrastructure/workouts/workout_dto.dart';

import '../../infrastructure/workouts/workout_form_dto.dart';

///holds the definition of the workout repository

abstract class IWorkoutRepository{
  Future<List<WorkoutDto>> getAllWorkout();
  Future<Either<WorkoutFailure, Unit>> create(WorkoutFormDto workout);
  Future<Either<WorkoutFailure, Unit>> update(WorkoutFormDto workout);
  Future<Either<WorkoutFailure, Unit>> delete(int workoutId);
  Future<WorkoutDto> getWorkout(int id);
}