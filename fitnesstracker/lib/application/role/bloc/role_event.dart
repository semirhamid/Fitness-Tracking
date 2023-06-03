part of 'role_bloc.dart';

@freezed
class RoleEvent with _$RoleEvent {
  const factory RoleEvent.initial() = _Initial;
  const factory RoleEvent.createRole(String roleName) = CreateRole;
  const factory RoleEvent.deleteRole(String roleName) = DeleteRole;
  const factory RoleEvent.getRoleUsers(String roleName) = GetRoleUsers;
  const factory RoleEvent.getRoles() = GetRoles;
  
  const factory RoleEvent.addUserToRole(UserRole userRole) = AddUserToRole;
  const factory RoleEvent.removeUserToRole(UserRole userRole) = RemoveUserToRole;
}