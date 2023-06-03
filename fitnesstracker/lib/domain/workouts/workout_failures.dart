import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_failures.freezed.dart';

@freezed
abstract class WorkoutFailure with _$WorkoutFailure{
  const factory WorkoutFailure.unexpected() = _Unexpected;
  const factory WorkoutFailure.insufficientPermission() = _InsufficientPermission;
  const factory WorkoutFailure.unableToUpdate() = _UnableToUpdate;
  const factory WorkoutFailure.unableToDelete() = _UnableToDelete;
  const factory WorkoutFailure.unableToCreate() = _UnableToCreate;
  const factory WorkoutFailure.unableToGet() = _UnableToGet;
}