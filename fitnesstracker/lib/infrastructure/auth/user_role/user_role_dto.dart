import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/core/validate_object.dart';

part 'user_role_dto.freezed.dart';
part 'user_role_dto.g.dart';

@freezed
abstract class UserRoleDto with _$UserRoleDto {
  const factory UserRoleDto({
    required String emailAddress,
    required List<String> role,
  }) = _UserRoleDto;

  factory UserRoleDto.fromJson(Map<String, dynamic> json) =>
      _$UserRoleDtoFromJson(json);
  

}
