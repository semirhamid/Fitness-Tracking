// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_type_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanTypeDto _$$_PlanTypeDtoFromJson(Map<String, dynamic> json) =>
    _$_PlanTypeDto(
      planId: json['planId'] as int,
      day: json['day'] as int,
      dietIds: (json['dietIds'] as List<dynamic>).map((e) => e as int).toList(),
      workoutIds:
          (json['workoutIds'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_PlanTypeDtoToJson(_$_PlanTypeDto instance) =>
    <String, dynamic>{
      'planId': instance.planId,
      'day': instance.day,
      'dietIds': instance.dietIds,
      'workoutIds': instance.workoutIds,
    };
