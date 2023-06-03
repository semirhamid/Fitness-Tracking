import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fitnesstracker/domain/workouts/value_validators.dart';

part 'workout_form_dto.freezed.dart';


@freezed
abstract class WorkoutFormDto implements _$WorkoutFormDto {
  const factory WorkoutFormDto({
    @Default(0) int id ,
    required String title,
    required String description,
    required int duration,
    required int step,
    required String focus,
    required File? image1Url,
    required File? image2Url,
  }) = _WorkoutDto;

  
}
