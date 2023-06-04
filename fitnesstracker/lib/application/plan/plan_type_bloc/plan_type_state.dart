part of 'plan_type_bloc.dart';

@freezed
class PlanTypeState with _$PlanTypeState {
  const factory PlanTypeState.initial() = Initial;
  const factory PlanTypeState.loading() = Loading;
  const factory PlanTypeState.notLoading() = NotLoading;
  const factory PlanTypeState.listloaded(List<PlanTypeDto> plans) = ListLoaded;
  const factory PlanTypeState.loaded(PlanTypeDto plan) = PlanTypeLoaded;
  const factory PlanTypeState.failure() = Failure;
}
