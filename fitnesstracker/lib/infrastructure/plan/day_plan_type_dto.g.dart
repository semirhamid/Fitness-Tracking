// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_plan_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayPlanTypeDto _$$_DayPlanTypeDtoFromJson(Map<String, dynamic> json) =>
    _$_DayPlanTypeDto(
      diets: (json['diets'] as List<dynamic>)
          .map((e) => DietDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      workouts: (json['workouts'] as List<dynamic>)
          .map((e) => WorkoutDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DayPlanTypeDtoToJson(_$_DayPlanTypeDto instance) =>
    <String, dynamic>{
      'diets': instance.diets,
      'workouts': instance.workouts,
    };
