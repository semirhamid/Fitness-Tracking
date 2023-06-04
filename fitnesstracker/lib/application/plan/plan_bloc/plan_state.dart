part of 'plan_bloc.dart';

@freezed
class PlanState with _$PlanState {
  const factory PlanState.initial() = Initial;
  const factory PlanState.loading() = Loading;
  const factory PlanState.notLoading() = NotLoading;
  const factory PlanState.listloaded(List<PlanDto> plans) = ListLoaded;
  const factory PlanState.loaded(PlanDto plan) = PlanLoaded;
  const factory PlanState.failure() = Failure;
}
