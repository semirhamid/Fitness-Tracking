import 'package:fitnesstracker/domain/user/user_data/user_data.dart';

import '../../../domain/user/user_data/workout_data.dart';

class UserDataDto {
  int day;
  int planTypeId;
  List<DailyWorkoutModel> workouts;
  bool? diet;
  int? sleep;
  UserDataDto({
    required this.day,
    required this.planTypeId,
    required this.workouts,
    this.diet,
    this.sleep
  });

  UserData toDomain(){
    final List<WorkoutData> workoutsData = workouts.map((workoutdata) => WorkoutData(workoutId: workoutdata.workoutId, step: workoutdata.step ?? 0, duration: workoutdata.duration ?? 0)).toList();
    return UserData(
      day: day,
      planTypeId: planTypeId,
      workouts: workoutsData,
    );
  }
}

class DailyWorkoutModel {
  int workoutId;
  int? step;
  int? duration;
  DailyWorkoutModel({
    required this.workoutId,
    this.step,
    this.duration
  });
}
