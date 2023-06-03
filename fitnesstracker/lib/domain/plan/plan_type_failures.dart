import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_type_failures.freezed.dart';

@freezed
abstract class PlanTypeFailure with _$PlanTypeFailure {
  const factory PlanTypeFailure.unexpected() = _Unexpected;
  const factory PlanTypeFailure.insufficientPermission() = _InsufficientPermission;
  const factory PlanTypeFailure.unableToUpdate() = _UnableToUpdate;
  const factory PlanTypeFailure.unableToDelete() = _UnableToDelete;
  const factory PlanTypeFailure.unableToCreate() = _UnableToCreate;
  const factory PlanTypeFailure.unableToGet() = _UnableToGet;
}
