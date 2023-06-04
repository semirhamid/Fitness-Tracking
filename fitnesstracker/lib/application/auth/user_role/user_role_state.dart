part of 'user_role_bloc.dart';

@freezed
class UserRoleState with _$UserRoleState {
  const factory UserRoleState.initial() = Initial;
  const factory UserRoleState.getUserRole(UserRoleDto userRoleDto) = GetUserRole;
  const factory UserRoleState.setUserRole(UserRole userRole) = SetUserRole;
  const factory UserRoleState.loading() = Loading;
  const factory UserRoleState.notLoading() = NotLoading;
  const factory UserRoleState.loaded() = Loaded;
  

}
