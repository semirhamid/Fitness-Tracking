import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role_failures.freezed.dart';

@freezed
abstract class UserRoleFailure with _$UserRoleFailure {
  const factory UserRoleFailure.cancelledByUser() = CancelledByUser;
  const factory UserRoleFailure.fileNotFound() = FileNotFound;
  const factory UserRoleFailure.unauthorized() = Unauthorized;
  const factory UserRoleFailure.unauthenticated() = Unauthenticated;
  const factory UserRoleFailure.noInternetConnection() = NoInternetConnection;
  const factory UserRoleFailure.noServiceFound() = NoServiceFound;
  const factory UserRoleFailure.invalidInput() = InvalidInput;
  const factory UserRoleFailure.unknownError() = UnknownError;
  const factory UserRoleFailure.badRequest() = BadRequest;
  const factory UserRoleFailure.CouldnotLogout() = CouldnotLogout;
}
