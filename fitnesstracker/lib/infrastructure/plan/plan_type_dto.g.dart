// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanTypeDto _$$_PlanTypeDtoFromJson(Map<String, dynamic> json) =>
    _$_PlanTypeDto(
      planId: json['planId'] as int,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
      level: json['level'] as String,
      dayPlan: (json['dayPlan'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, DayPlanTypeDto.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_PlanTypeDtoToJson(_$_PlanTypeDto instance) =>
    <String, dynamic>{
      'planId': instance.planId,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'level': instance.level,
      'dayPlan': instance.dayPlan,
    };
