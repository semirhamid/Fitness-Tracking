// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      planTypeId: json['planTypeId'] as int,
      day: json['day'] as int,
      workouts: (json['workouts'] as List<dynamic>)
          .map((e) => WorkoutData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'planTypeId': instance.planTypeId,
      'day': instance.day,
      'workouts': instance.workouts,
    };
