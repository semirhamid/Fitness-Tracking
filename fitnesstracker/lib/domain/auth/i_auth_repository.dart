import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/auth/auth_failure.dart';
import 'package:fitnesstracker/domain/auth/user.dart';

import 'value_objects.dart';

abstract class IAuthRepository {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> register({
    required Name name,
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signOut();
  Future<Either<AuthFailure, Unit>> changePassword(String newPassword);
}
