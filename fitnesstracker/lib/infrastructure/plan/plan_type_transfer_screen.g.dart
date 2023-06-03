// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_type_transfer_screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanTypeTransferScreen _$$_PlanTypeTransferScreenFromJson(
        Map<String, dynamic> json) =>
    _$_PlanTypeTransferScreen(
      planId: json['planId'] as int,
      day: json['day'] as int,
      workouts: (json['workouts'] as List<dynamic>)
          .map((e) => WorkoutDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      diets: (json['diets'] as List<dynamic>)
          .map((e) => DietDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlanTypeTransferScreenToJson(
        _$_PlanTypeTransferScreen instance) =>
    <String, dynamic>{
      'planId': instance.planId,
      'day': instance.day,
      'workouts': instance.workouts,
      'diets': instance.diets,
    };
