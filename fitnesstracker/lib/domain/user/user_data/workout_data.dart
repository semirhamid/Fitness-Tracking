import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_data.freezed.dart';
part 'workout_data.g.dart';

@freezed
abstract class WorkoutData with _$WorkoutData {
  const factory WorkoutData({
    required int workoutId,
    required int step,
    required int duration,
  }) = _WorkoutData;

  factory WorkoutData.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDataFromJson(json);
  

}
