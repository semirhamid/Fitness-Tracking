import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() = InvalidEmailAndPasswordCombination;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.unexpected() = Unexpected;
  const factory AuthFailure.fileNotFound() = FileNotFound;
  const factory AuthFailure.unauthorized() = Unauthorized;
  const factory AuthFailure.unauthenticated() = Unauthenticated;
  const factory AuthFailure.noInternetConnection() = NoInternetConnection;
  const factory AuthFailure.noServiceFound() = NoServiceFound;
  const factory AuthFailure.invalidInput() = InvalidInput;
  const factory AuthFailure.unknownError() = UnknownError;
  const factory AuthFailure.badRequest() = BadRequest;
  const factory AuthFailure.CouldnotLogout() = CouldnotLogout;
}
