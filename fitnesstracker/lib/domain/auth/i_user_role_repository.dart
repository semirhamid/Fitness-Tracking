import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/auth/user_role.dart';
import 'package:fitnesstracker/domain/auth/user_role_failures.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/auth/user_role/user_role_dto.dart';


abstract class IUserRoleRepository {
  Future<UserRoleDto> getUserRole(String email);
  Future<Either<UserRoleFailure, Unit>> create(UserRole userRole);
  Future<Either<UserRoleFailure, Unit>> delete(UserRole userRole);
}
