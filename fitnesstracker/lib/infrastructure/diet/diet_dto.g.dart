// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DietDto _$$_DietDtoFromJson(Map<String, dynamic> json) => _$_DietDto(
      id: json['id'] as int,
      mealType: json['mealType'] as String,
      mealName: json['mealName'] as String,
      mealDescription: json['mealDescription'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_DietDtoToJson(_$_DietDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mealType': instance.mealType,
      'mealName': instance.mealName,
      'mealDescription': instance.mealDescription,
      'imageUrl': instance.imageUrl,
    };
