part of 'workout_bloc.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = Initial;
  const factory WorkoutState.loading() = Loading;
  const factory WorkoutState.notLoading() = NotLoading;
  const factory WorkoutState.listloaded(List<WorkoutDto> workouts) = ListLoaded;
  const factory WorkoutState.loaded(WorkoutDto workout) = WorkoutLoaded;
  const factory WorkoutState.failure() = Failure;
}
