// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanDto _$$_PlanDtoFromJson(Map<String, dynamic> json) => _$_PlanDto(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      level: json['level'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_PlanDtoToJson(_$_PlanDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'level': instance.level,
      'imageUrl': instance.imageUrl,
    };
