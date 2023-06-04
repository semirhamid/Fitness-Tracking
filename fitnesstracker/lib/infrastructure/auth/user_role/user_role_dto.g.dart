// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRoleDto _$$_UserRoleDtoFromJson(Map<String, dynamic> json) =>
    _$_UserRoleDto(
      emailAddress: json['emailAddress'] as String,
      role: (json['role'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UserRoleDtoToJson(_$_UserRoleDto instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'role': instance.role,
    };
