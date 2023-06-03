import 'package:freezed_annotation/freezed_annotation.dart';

import '../diet/diet_dto.dart';
import '../workouts/workout_dto.dart';
import 'day_plan_type_dto.dart';

part 'plan_type_dto.freezed.dart';
part 'plan_type_dto.g.dart';

@freezed
class PlanTypeDto with _$PlanTypeDto {
  factory PlanTypeDto({
    required int planId,
    required String title,
    required String imageUrl,
    required String description,
    required String level,
    required Map<String, DayPlanTypeDto> dayPlan,
  }) = _PlanTypeDto;

  factory PlanTypeDto.fromJson(Map<String, dynamic> json) =>
      _$PlanTypeDtoFromJson(json);
}



