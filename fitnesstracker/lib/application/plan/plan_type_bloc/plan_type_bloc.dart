import 'package:bloc/bloc.dart';
import 'package:fitnesstracker/domain/diet/i_diet_repository.dart';
import 'package:fitnesstracker/domain/workouts/i_workout_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/plan/i_plan_type_repository.dart';
import '../../../infrastructure/plan/plan_type_dto.dart';
import '../../../infrastructure/plan/plan_type_form_dto.dart';

part 'plan_type_event.dart';
part 'plan_type_state.dart';
part 'plan_type_bloc.freezed.dart';

@injectable
class PlanTypeBloc extends Bloc<PlanTypeEvent, PlanTypeState> {
  final IPlanTypeRepository _planRepository;
  final IWorkoutRepository _workoutRepository;
  final IDietRepository _dietRepository;
  PlanTypeBloc(
      this._planRepository, this._dietRepository, this._workoutRepository)
      : super(const PlanTypeState.initial()) {
    on<PlanTypeEvent>((event, emit) async {
      await event.map(
        initial: (e) {},
        create: (e) async {
          await _planRepository
              .create(e.planType)
              .whenComplete(() => emit(const PlanTypeState.loading()));
          emit(const PlanTypeState.loading());
        },
        delete: (e) async {
          await _planRepository.delete(e.planTypeId);
        },
        getPlanType: (e) async {
          var result = await _planRepository.getPlanType(e.id);
          emit(PlanTypeState.loaded(result));
        },
        update: (e) async {
          await _planRepository.update(e.planType);
          emit(const PlanTypeState.notLoading());
        },
        getPlanTypes: (e) async {
          var result = await _planRepository.getAllPlanType();
          emit(PlanTypeState.listloaded(result));
        },
        getSelectedDietAndWorkoutPlans:
            (GetSelectedDietAndWorkoutPlans value) {},
        deletePlanTypeDay: (DeletePlanTypeDay value) {
          _planRepository.deletePlanTpeDay(value.planTypeId, value.day);
        },
      );
    });
  }
}
