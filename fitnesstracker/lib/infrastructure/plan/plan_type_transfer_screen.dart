import 'package:fitnesstracker/infrastructure/diet/diet_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import '../workouts/workout_dto.dart';


part 'plan_type_transfer_screen.freezed.dart';
part 'plan_type_transfer_screen.g.dart';

@freezed
class PlanTypeTransferScreen with _$PlanTypeTransferScreen {
  factory PlanTypeTransferScreen({
    required int planId,
    required int day,
    required List<WorkoutDto> workouts,
    required List<DietDto> diets,
  }) = _PlanTypeTransferScreen;

  factory PlanTypeTransferScreen.fromJson(Map<String, dynamic> json) =>
      _$PlanTypeTransferScreenFromJson(json);
}
