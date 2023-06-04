import 'package:bloc/bloc.dart';
import 'package:fitnesstracker/domain/workouts/i_workout_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../infrastructure/workouts/workout_dto.dart';
import '../../../infrastructure/workouts/workout_form_dto.dart';

part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

@injectable
class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final IWorkoutRepository _workoutRepository;
  WorkoutBloc(this._workoutRepository) : super(const WorkoutState.initial()) {
    on<WorkoutEvent>((event, emit) async {
      await event.map(
          initial: (e) {},
          create: (e) async {
            emit(const WorkoutState.loading());
            await _workoutRepository
                .create(e.workout)
                .whenComplete(() => emit(const WorkoutState.loading()));
          },
          delete: (e) async {
            await _workoutRepository.delete(e.workoutId);
          },
          getWorkout: (e) async {
            emit(const WorkoutState.loading());
            var result = await _workoutRepository.getWorkout(e.id);
            emit(WorkoutState.loaded(result));
          },
          update: (e) async {
            await _workoutRepository.update(e.workout);
          },
          getWorkouts: (e) async {
            emit(const WorkoutState.loading());
            var result = await _workoutRepository.getAllWorkout();
            emit(WorkoutState.listloaded(result));
          });
    });
  }
}
