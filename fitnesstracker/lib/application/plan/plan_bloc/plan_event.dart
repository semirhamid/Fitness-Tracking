part of 'plan_bloc.dart';

@freezed
class PlanEvent with _$PlanEvent {
  const factory PlanEvent.initial() = _Initial;
  const factory PlanEvent.create(PlanFormDto plan) = Create;
  const factory PlanEvent.delete(int planId) = Delete;
  const factory PlanEvent.getPlan(int id) = GetPlan;
  const factory PlanEvent.getPlans() = GetPlans;
  const factory PlanEvent.update(PlanFormDto plan) = Update;
}
