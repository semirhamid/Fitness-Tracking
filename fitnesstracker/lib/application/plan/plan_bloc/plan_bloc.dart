import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/plan/i_plan_repository.dart';
import '../../../infrastructure/plan/plan_dto.dart';
import '../../../infrastructure/plan/plan_form_dto.dart';

part 'plan_event.dart';
part 'plan_state.dart';
part 'plan_bloc.freezed.dart';

@injectable
class PlanBloc extends Bloc<PlanEvent, PlanState> {
  final IPlanRepository _planRepository;
  PlanBloc(this._planRepository) : super(const PlanState.initial()) {
    on<PlanEvent>((event, emit) async{
      await event.map(
          initial: (e) {},
          create: (e) async {
            await _planRepository
                .create(e.plan)
                .whenComplete(() => emit(const PlanState.loading()));
          },
          delete: (e) async {
            await _planRepository.delete(e.planId);
          },
          getPlan: (e) async {
            var result = await _planRepository.getPlan(e.id);
            emit(PlanState.loaded(result));
          },
          update: (e) async {
            await _planRepository.update(e.plan);
          },
          getPlans: (e) async {

            var result = await _planRepository.getAllPlan();
            emit(PlanState.listloaded(result));
          });
    });
  }
}
