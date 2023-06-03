import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:fitnesstracker/domain/auth/auth_failure.dart';
import 'package:fitnesstracker/domain/auth/i_auth_repository.dart';
import 'package:fitnesstracker/domain/auth/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'faker.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late SignInFormBloc signInFormBloc;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    signInFormBloc = SignInFormBloc(mockAuthRepository);
  });

  group('LoginForm', () {
    final email = getRandomEmail();
    final password = getRandomString(8);

    test('initial SignInFormState should be SignInFormState.initial()', () {
      // assert
      expect(signInFormBloc.state, equals(SignInFormState.initial()));
    });

    blocTest<SignInFormBloc, SignInFormState>(
      'emits the new [EmailAddress]',
      build: () => signInFormBloc,
      act: (bloc) => bloc.add(SignInFormEvent.emailChanged(email)),
      expect: () => [
        SignInFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          authFailureOrSuccessOption: none(),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest<SignInFormBloc, SignInFormState>(
      'emits the new [Password]',
      build: () => signInFormBloc,
      act: (bloc) => bloc.add(SignInFormEvent.passwordChanged(password)),
      expect: () => [
        SignInFormState.initial().copyWith(
          password: Password(password),
          authFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<SignInFormBloc, SignInFormState>(
      'emits [initial] states for successful signIn',
      build: () {
        when(
          () => mockAuthRepository.signIn(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return signInFormBloc;
      },
      seed: () => SignInFormState.initial().copyWith(
        password: Password(password),
        emailAddress: EmailAddress(email),
      ),
      act: (bloc) => bloc.add(SignInFormEvent.signinPressed(EmailAddress(email), Password(password))),
      wait: const Duration(milliseconds: 2),
      expect: () => [
        // SignInFormState.initial().copyWith(
        //   emailAddress: EmailAddress(email),
        //   password: Password(password),
        //   isSubmitting: true,
        //   showErrorMessages: false,
        //   authFailureOrSuccessOption: none(),
        // ),
        // SignInFormState.initial().copyWith(
        //   emailAddress: EmailAddress(email),
        //   password: Password(password),
        //   isSubmitting: false,
        //   showErrorMessages: true,
        //   authFailureOrSuccessOption: some(right(unit)),
        // ),
      ],
      verify: (_) {
        verify(
          () => mockAuthRepository.signIn(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).called(1);
      },
    );

    blocTest<SignInFormBloc, SignInFormState>(
      'emits [initial] states for unsuccessful signIn',
      build: () {
        when(
          () => mockAuthRepository.signIn(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const AuthFailure.serverError()),
          ),
        );
        return signInFormBloc;
      },
      act: (bloc) => bloc.add(SignInFormEvent.signinPressed(EmailAddress(email), Password(password))),
      seed: () => SignInFormState.initial().copyWith(
        password: Password(password),
        emailAddress: EmailAddress(email),
      ),
      wait: const Duration(milliseconds: 2),
      expect: () => [
        // SignInFormState.initial().copyWith(
        //   emailAddress: EmailAddress(email),
        //   password: Password(password),
        //   isSubmitting: true,
        //   showErrorMessages: false,
        //   authFailureOrSuccessOption: none(),
        // ),
        // SignInFormState.initial().copyWith(
        //   emailAddress: EmailAddress(email),
        //   password: Password(password),
        //   isSubmitting: false,
        //   showErrorMessages: true,
        //   authFailureOrSuccessOption:
        //       some(left(const AuthFailure.serverError())),
        // ),
      ],
      verify: (_) {
        verify(
          () => mockAuthRepository.signIn(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).called(1);
      },
    );

    blocTest<SignInFormBloc, SignInFormState>(
      'emits [initial] states for invalid password',
      build: () {
        when(
          () => mockAuthRepository.signIn(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const AuthFailure.serverError()),
          ),
        );
        signInFormBloc
          ..add(const SignInFormEvent.passwordChanged(""))
          ..add(SignInFormEvent.emailChanged(email));
        return signInFormBloc;
      },
      skip: 2,
      act: (bloc) => bloc.add(SignInFormEvent.signinPressed(EmailAddress(email), Password(password))),
      expect: () => [
        // SignInFormState.initial().copyWith(
        //   emailAddress: EmailAddress(email),
        //   password: Password(""),
        //   isSubmitting: false,
        //   showErrorMessages: true,
        //   authFailureOrSuccessOption: none(),
        // ),
      ],
      verify: (_) {
        verifyNever(
          () => mockAuthRepository.signIn(
            emailAddress: EmailAddress(email),
            password: Password(""),
          ),
        );
      },
    );

    blocTest<SignInFormBloc, SignInFormState>(
      'emits [initial] states for invalid email',
      build: () {
        when(
          () => mockAuthRepository.signIn(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const AuthFailure.serverError()),
          ),
        );
        signInFormBloc
          ..add(SignInFormEvent.passwordChanged(password))
          ..add(const SignInFormEvent.emailChanged(""));
        return signInFormBloc;
      },
      skip: 2,
      act: (bloc) => bloc.add(SignInFormEvent.signinPressed(EmailAddress(email), Password(password))),
      expect: () => [],
      verify: (_) {
        verifyNever(
          () => mockAuthRepository.signIn(
            emailAddress: EmailAddress(""),
            password: Password(password),
          ),
        );
      },
    );
  });

  tearDown(() => signInFormBloc.close());
}