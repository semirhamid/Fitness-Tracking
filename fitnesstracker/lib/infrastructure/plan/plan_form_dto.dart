import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';


part 'plan_form_dto.freezed.dart';

@freezed
abstract class PlanFormDto with _$PlanFormDto {
  const factory PlanFormDto({
    @Default(0) int id,
    required String title,
    required String description,
    required String level,
    required File? imageUrl,
  }) = _PlanDto;
}
