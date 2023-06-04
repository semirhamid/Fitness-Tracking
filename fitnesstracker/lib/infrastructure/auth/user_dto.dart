import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/core/validate_object.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String token,
    required String refreshToken,
    required List<String> role,
    required String name,
    required String emailAddress,
    required int expireTime,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.toDomain(UserDto dto) => UserDto(
        id: dto.id,
        token: dto.token,
        refreshToken: dto.refreshToken,
        role: dto.role,
        name: dto.name,
        emailAddress: dto.emailAddress,
        expireTime: dto.expireTime,
      );
}
