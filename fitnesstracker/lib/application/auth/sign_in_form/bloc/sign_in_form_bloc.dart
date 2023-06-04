import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/auth/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/auth/auth_failure.dart';
import '../../../../domain/auth/i_auth_repository.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthRepository _authRepository;

  SignInFormBloc(this._authRepository) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) {
          print(e.emailStr);
          emit(
            state.copyWith(
                emailAddress: EmailAddress(e.emailStr),
                authFailureOrSuccessOption: none(),
                showErrorMessages: true),
          );
        },
        passwordChanged: (e) {
          emit(
            state.copyWith(
              password: Password(e.passwordStr),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        registerPressed: (e) async {
          await _authRepository.register(
              name: e.name, emailAddress: e.emailAddress, password: e.password);
        },
        signinPressed: (e) async {
          await _authRepository.signIn(
              emailAddress: e.emailAddress, password: e.password);
        },
        changePassword: (e) {},
        signOutPressed: (e) {},
        nameChanged: (e) {
          emit(
            state.copyWith(
              name: Name(e.nameStr),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
      );
    });
  }
}
