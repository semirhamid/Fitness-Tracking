// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
      role: (json['role'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      expireTime: json['expireTime'] as int,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'role': instance.role,
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'expireTime': instance.expireTime,
    };
