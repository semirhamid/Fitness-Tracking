import 'package:freezed_annotation/freezed_annotation.dart';

import '../diet/diet_dto.dart';
import '../workouts/workout_dto.dart';

part 'day_plan_type_dto.freezed.dart';
part 'day_plan_type_dto.g.dart';

@freezed
class DayPlanTypeDto with _$DayPlanTypeDto {
  factory DayPlanTypeDto({
    required List<DietDto> diets,
    required List<WorkoutDto> workouts,
  }) = _DayPlanTypeDto;

  factory DayPlanTypeDto.fromJson(Map<String, dynamic> json) =>
      _$DayPlanTypeDtoFromJson(json);
}
