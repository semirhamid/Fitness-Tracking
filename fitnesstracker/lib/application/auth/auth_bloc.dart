import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _AuthRepository;

  AuthBloc(this._AuthRepository) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      event.map(authCheckRequested: (e) async {
        final userOption = await _AuthRepository.getSignedInUser();
        emit(
          userOption.fold(
            () => const AuthState.unauthenticated(),
            (_) => const AuthState.authenticated(),
          ),
        );
      }, signedOut: (e) {
        _AuthRepository.signOut();
        emit(const AuthState.unauthenticated());
      });
    });
  }
}
