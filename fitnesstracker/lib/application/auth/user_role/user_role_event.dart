part of 'user_role_bloc.dart';

@freezed
class UserRoleEvent with _$UserRoleEvent {
  const factory UserRoleEvent.initial() = _Initial;
  const factory UserRoleEvent.create(UserRole userRole) = Create;
  const factory UserRoleEvent.delete(UserRole userRole) = Delete;
  const factory UserRoleEvent.getUserRole(String email) = GetRole;
}