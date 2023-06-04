part of 'plan_type_bloc.dart';

@freezed

class PlanTypeEvent with _$PlanTypeEvent {
  const factory PlanTypeEvent.initial() = _Initial;
  const factory PlanTypeEvent.create(PlanTypeFormDto planType) = Create;
  const factory PlanTypeEvent.delete(int planTypeId) = Delete;
  const factory PlanTypeEvent.getPlanType(int id) = GetPlanType;
  const factory PlanTypeEvent.getPlanTypes() = GetPlanTypes;

  const factory PlanTypeEvent.update(PlanTypeFormDto planType) = Update;
}