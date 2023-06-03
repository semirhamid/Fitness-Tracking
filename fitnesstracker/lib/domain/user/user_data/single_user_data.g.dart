// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleUserData _$$_SingleUserDataFromJson(Map<String, dynamic> json) =>
    _$_SingleUserData(
      planTypeId: json['planTypeId'] as int,
      day: json['day'] as int,
      workoutId: json['workoutId'] as int,
      step: json['step'] as int?,
      duration: json['duration'] as int?,
    );

Map<String, dynamic> _$$_SingleUserDataToJson(_$_SingleUserData instance) =>
    <String, dynamic>{
      'planTypeId': instance.planTypeId,
      'day': instance.day,
      'workoutId': instance.workoutId,
      'step': instance.step,
      'duration': instance.duration,
    };
