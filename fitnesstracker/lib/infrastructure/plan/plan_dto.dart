
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_dto.freezed.dart';
part 'plan_dto.g.dart';

@freezed
abstract class PlanDto implements _$PlanDto {
  const factory PlanDto({
    required int id,
    required String title,
    required String description,
    required String level,
    required String imageUrl,
  }) = _PlanDto;
  
  factory PlanDto.fromJson(Map<String, dynamic> json) => _$PlanDtoFromJson(json);
}
