import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/application/workout/bloc/workout_bloc.dart';
import 'package:fitnesstracker/domain/workouts/i_workout_repository.dart';
import 'package:fitnesstracker/domain/workouts/workout_failures.dart';
import 'package:fitnesstracker/infrastructure/workouts/workout_form_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWorkoutRepository extends Mock implements IWorkoutRepository {}
class FakeWorkout extends Fake implements WorkoutFormDto {}

void main() {
  late MockWorkoutRepository mockWorkoutRepository;
  late WorkoutBloc workoutBloc;
  late FakeWorkout fakeWorkout;

  setUp(() {
    mockWorkoutRepository = MockWorkoutRepository();
    workoutBloc = WorkoutBloc(mockWorkoutRepository);
    fakeWorkout = FakeWorkout();
  });

  group('WorkoutBloc', () {
    test('initial WorkoutState should be WorkoutState.initial()', () {
      // assert
      expect(workoutBloc.state, equals(const WorkoutState.initial()));
    });
    
    blocTest<WorkoutBloc, WorkoutState>(
      'yields [loading] when the getWorkouts is added',
      build: () {
        when(() => mockWorkoutRepository.getAllWorkout())
          .thenAnswer(
            (_) async => await Future.delayed(
              const Duration(milliseconds: 1),
              () => [],
            ),
          );
        return workoutBloc;
      },
      act: (bloc) => bloc.add(const WorkoutEvent.getWorkouts()),
      expect: () => [
        const WorkoutState.loading(),
      ],
      verify: (_) {
        verify(
          () => mockWorkoutRepository.getAllWorkout(),
        ).called(1);
      },
    );
    
    blocTest<WorkoutBloc, WorkoutState>(
      'yields [loading] when the create is added',
      build: () {
        when(() => mockWorkoutRepository.create(fakeWorkout))
          .thenAnswer(
            (_) async => await Future.delayed(
              const Duration(milliseconds: 1),
              () => left(const WorkoutFailure.unableToCreate()),
            ),
          );
        return workoutBloc;
      },
      act: (bloc) => bloc.add(WorkoutEvent.create(fakeWorkout)),
      expect: () => [
        const WorkoutState.loading(),
      ],
    );
    
    blocTest<WorkoutBloc, WorkoutState>(
      'yields [loading] when the update is added',
      build: () {
        when(() => mockWorkoutRepository.update(fakeWorkout))
          .thenAnswer(
            (_) async => await Future.delayed(
              const Duration(milliseconds: 1),
              () => left(const WorkoutFailure.unableToUpdate()),
            ),
          );
        return workoutBloc;
      },
      act: (bloc) => bloc.add(WorkoutEvent.update(fakeWorkout)),
      expect: () => [
        const WorkoutState.loading(),
      ],
    );
    
    blocTest<WorkoutBloc, WorkoutState>(
      'yields [loading] when the delete is added',
      build: () {
        when(() => mockWorkoutRepository.delete(12))
          .thenAnswer(
            (_) async => await Future.delayed(
              const Duration(milliseconds: 1),
              () => left(const WorkoutFailure.unableToDelete()),
            ),
          );
        return workoutBloc;
      },
      act: (bloc) => bloc.add(const WorkoutEvent.delete(12)),
      expect: () => [],
    );
  });
}
