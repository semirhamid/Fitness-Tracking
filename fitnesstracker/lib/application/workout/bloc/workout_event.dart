part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.initial() = _Initial;
  const factory WorkoutEvent.create(WorkoutFormDto workout) = Create;
  const factory WorkoutEvent.delete(int workoutId) = Delete;
  const factory WorkoutEvent.getWorkout(int id) = GetWorkout;
  const factory WorkoutEvent.getWorkouts() = GetWorkouts;
  const factory WorkoutEvent.update(WorkoutFormDto workout) = Update;

}