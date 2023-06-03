import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_failures.freezed.dart';

@freezed
abstract class RoleFailure with _$RoleFailure {
  const factory RoleFailure.unexpected() = _Unexpected;
  const factory RoleFailure.insufficientPermission() = _InsufficientPermission;
  const factory RoleFailure.unableToUpdate() = _UnableToUpdate;
  const factory RoleFailure.unableToDelete() = _UnableToDelete;
  const factory RoleFailure.unableToCreate() = _UnableToCreate;
  const factory RoleFailure.unableToGet() = _UnableToGet;
}
