import 'package:bloc/bloc.dart';
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
  PlanTypeBloc(this._planRepository) : super(const PlanTypeState.initial()) {
    on<PlanTypeEvent>((event, emit) async {
      await event.map(
          initial: (e) {},
          create: (e) async {
            emit(const PlanTypeState.loading());
            await _planRepository
                .create(e.planType)
                .whenComplete(() => emit(const PlanTypeState.loading()));
          },
          delete: (e) async {
            await _planRepository.delete(e.planTypeId);
          },
          getPlanType: (e) async {
            var result = await _planRepository.getPlanType(e.id);
            emit(PlanTypeState.loaded(result));
          },
          update: (e) async {
            emit(const PlanTypeState.loading());
            await _planRepository.update(e.planType);
            emit(const PlanTypeState.notLoading());
          },
          getPlanTypes: (e) async {
            emit(const PlanTypeState.loading());
            var result = await _planRepository.getAllPlanType();
            emit(PlanTypeState.listloaded(result));
            emit(const PlanTypeState.notLoading());
          });
    });
  }
}
