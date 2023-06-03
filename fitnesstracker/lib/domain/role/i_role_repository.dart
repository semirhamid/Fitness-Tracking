import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/infrastructure/role/user_dto.dart';

import '../../infrastructure/role/role_dto.dart';

import '../auth/user_role.dart';
import 'role_failures.dart';

abstract class IRoleRepository {
  Future<List<RoleDto>> getAllRole();
  Future<List<UserDto>> getAllUsers();
  Future<List<UserRole>> getUsersRole(String roleName);
  Future<Either<RoleFailure, Unit>> create(String roleName);
  Future<Either<RoleFailure, Unit>> delete(String roleName);
  Future<Either<RoleFailure, Unit>> addUserToRole(UserRole userRole);
  Future<Either<RoleFailure, Unit>> removeUserFromRole(UserRole userRole);
}
