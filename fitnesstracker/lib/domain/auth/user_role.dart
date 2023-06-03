import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/auth/user_dto.dart';

part 'user_role.freezed.dart';
part 'user_role.g.dart';

@freezed
abstract class UserRole with _$UserRole {
  const factory UserRole(
    String email,
    String role,
  ) = _UserRole;

  factory UserRole.fromJson(Map<String, dynamic> json) => _$UserRoleFromJson(json);

  factory UserRole.toDomain(UserRole user) => UserRole(
        user.email,
        user.role,
      );
}
