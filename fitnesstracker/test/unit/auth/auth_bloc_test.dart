import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/application/auth/auth_bloc.dart';
import 'package:fitnesstracker/domain/auth/i_auth_repository.dart';
import 'package:fitnesstracker/domain/auth/user.dart';
import 'package:fitnesstracker/domain/data/local/SharedPrefs/i_shared_pref_service.dart';
import 'package:fitnesstracker/domain/role/i_role_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

class MockRoleRepository extends Mock implements IRoleRepository {}

class MockSharedRepository extends Mock implements ISharedPrefsService {}

class FakeUser extends Fake implements User {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late MockRoleRepository mockRoleRepository;
  late MockSharedRepository mockSharedRepository;
  late AuthBloc authBloc;
  late FakeUser fakeUser;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockRoleRepository = MockRoleRepository();
    mockSharedRepository = MockSharedRepository();
    authBloc =
        AuthBloc(mockAuthRepository, mockRoleRepository, mockSharedRepository);
    fakeUser = FakeUser();
  });

  group('AuthBloc', () {
    group('AuthCheckRequested', () {
      test('initial AuthState should be AuthState.initial()', () {
        // assert
        expect(authBloc.state, equals(const AuthState.initial()));
      });

      blocTest<AuthBloc, AuthState>(
        'yields [authenticated] when the user is authenticated',
        build: () {
          when(() => mockAuthRepository.getSignedInUser()).thenAnswer(
            (_) async => await Future.delayed(
              const Duration(milliseconds: 1),
              () => Some(fakeUser),
            ),
          );
          return authBloc;
        },
        act: (bloc) => bloc.add(const AuthEvent.authCheckRequested()),
        expect: () => [
          const AuthState.authenticated(),
        ],
        // wait: const Duration(milliseconds: 2),
        verify: (_) {
          verify(
            () => mockAuthRepository.getSignedInUser(),
          ).called(1);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'yields [unauthenticated] when the user is unauthenticated',
        build: () {
          when(
            () => mockAuthRepository.getSignedInUser(),
          ).thenAnswer(
            (_) => Future.delayed(
              const Duration(milliseconds: 1),
              () => const None(),
            ),
          );
          return authBloc;
        },
        act: (bloc) => bloc.add(const AuthEvent.authCheckRequested()),
        // wait: const Duration(milliseconds: 2),
        expect: () => [
          // const AuthState.unauthenticated(),
        ],
        verify: (_) {
          verify(
            () => mockAuthRepository.getSignedInUser(),
          ).called(1);
        },
      );
    });

    group('SignedOut', () {
      blocTest<AuthBloc, AuthState>(
        'yields [unauthenticated] when the user signs out',
        build: () {
          when(
            () => mockAuthRepository.signOut(),
          ).thenAnswer(
            (_) => Future.delayed(
              const Duration(milliseconds: 1),
              () => const Right(unit),
            ),
          );
          return authBloc;
        },
        act: (bloc) => bloc.add(const AuthEvent.signedOut()),
        wait: const Duration(milliseconds: 2),
        expect: () => [
          const AuthState.unauthenticated(),
        ],
        verify: (_) {
          verify(
            () => mockAuthRepository.signOut(),
          ).called(1);
        },
      );
    });
  });
}
