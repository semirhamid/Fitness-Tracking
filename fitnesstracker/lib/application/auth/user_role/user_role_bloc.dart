import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_user_role_repository.dart';
import '../../../domain/auth/user_role.dart';
import '../../../infrastructure/auth/user_role/user_role_dto.dart';

part 'user_role_event.dart';
part 'user_role_state.dart';
part 'user_role_bloc.freezed.dart';


@injectable
class UserRoleBloc extends Bloc<UserRoleEvent, UserRoleState> {
  final IUserRoleRepository _userRoleRepository;
  UserRoleBloc(this._userRoleRepository) : super(const UserRoleState.initial()) {
    on<UserRoleEvent>((event, emit) {
      event.map(
          initial: (e) {},
          create: (e) async {
            emit(const UserRoleState.loading());
            await _userRoleRepository.create(e.userRole);
            emit(const UserRoleState.notLoading());
          },
          delete: (e) async {
            await _userRoleRepository.delete(e.userRole);
          },
          getUserRole: (e) async {
            emit(const UserRoleState.loading());
            var result = await _userRoleRepository.getUserRole(e.email);
            emit(const UserRoleState.loaded());
          },
          );
    });
    
  }
}
