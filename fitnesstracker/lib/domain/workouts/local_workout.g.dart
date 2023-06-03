// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutLocal _$$_WorkoutLocalFromJson(Map<String, dynamic> json) =>
    _$_WorkoutLocal(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      duration: json['duration'] as int,
      step: json['step'] as int,
      focus: json['focus'] as String,
      image1Url: json['image1Url'] as String,
      image2Url: json['image2Url'] as String,
    );

Map<String, dynamic> _$$_WorkoutLocalToJson(_$_WorkoutLocal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'duration': instance.duration,
      'step': instance.step,
      'focus': instance.focus,
      'image1Url': instance.image1Url,
      'image2Url': instance.image2Url,
    };
