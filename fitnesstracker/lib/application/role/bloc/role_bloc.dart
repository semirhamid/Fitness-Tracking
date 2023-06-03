import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/user_role.dart';
import '../../../infrastructure/role/user_dto.dart';
import '../../../infrastructure/role/role_dto.dart';
import '../../../domain/role/i_role_repository.dart';

part 'role_event.dart';
part 'role_state.dart';
part 'role_bloc.freezed.dart';

@injectable
class RoleBloc extends Bloc<RoleEvent, RoleState> {
  final IRoleRepository _roleRepository;
  RoleBloc(this._roleRepository) : super(const RoleState.initial()) {
    on<RoleEvent>((event, emit) async {
      await event.map(
        addUserToRole: (value) async {
          await _roleRepository.addUserToRole(value.userRole);
        },
        createRole: (value) async {
          await _roleRepository.create(value.roleName);
        },
        deleteRole: (value) async {
          await _roleRepository.delete(value.roleName);
        },
        getRoleUsers: (value) async {
          var users = await _roleRepository.getUsersRole(value.roleName);
          print("from role bloc users");
          print(users);
          emit(RoleState.roleUsersLoaded(users));
        },
        getRoles: (value) async {
          var roles = await _roleRepository.getAllRole();
          emit(RoleState.rolesLoaded(roles));
        },
        initial: (value) {},
        removeUserToRole: (value) async {
          await _roleRepository.removeUserFromRole(value.userRole);
        },
      );
    });
  }
}
