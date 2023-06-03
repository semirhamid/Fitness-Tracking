// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutDto _$$_WorkoutDtoFromJson(Map<String, dynamic> json) =>
    _$_WorkoutDto(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      duration: json['duration'] as int,
      step: json['step'] as int,
      focus: json['focus'] as String,
      image1Url: json['image1Url'] as String,
      image2Url: json['image2Url'] as String,
    );

Map<String, dynamic> _$$_WorkoutDtoToJson(_$_WorkoutDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'step': instance.step,
      'focus': instance.focus,
      'image1Url': instance.image1Url,
      'image2Url': instance.image2Url,
    };
