part of 'role_bloc.dart';

@freezed
class RoleState with _$RoleState {
  const factory RoleState.initial() = Initial;
  const factory RoleState.created() = Created;
  const factory RoleState.loading() = Loading;
  const factory RoleState.rolesLoaded(List<RoleDto> roles) = RolesLoaded;
  
  const factory RoleState.roleUsersLoaded(List<UserRole> users) = RoleUsersLoaded;

}
