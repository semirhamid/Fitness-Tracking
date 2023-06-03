import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_type_form_dto.freezed.dart';
part 'plan_type_form_dto.g.dart';

@freezed
abstract class PlanTypeFormDto implements _$PlanTypeFormDto {
  const factory PlanTypeFormDto({
    required int planId,
    required int day,
    required List<int> dietIds,
    required List<int> workoutIds,
  }) = _PlanTypeDto;

  factory PlanTypeFormDto.fromJson(Map<String, dynamic> json) =>
      _$PlanTypeFormDtoFromJson(json);
}
