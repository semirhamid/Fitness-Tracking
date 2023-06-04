
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_failures.freezed.dart';

@freezed
abstract class PlanFailure with _$PlanFailure {
  const factory PlanFailure.unexpected() = _Unexpected;
  const factory PlanFailure.insufficientPermission() = _InsufficientPermission;
  const factory PlanFailure.unableToUpdate() = _UnableToUpdate;
  const factory PlanFailure.unableToDelete() = _UnableToDelete;
  const factory PlanFailure.unableToCreate() = _UnableToCreate;
  const factory PlanFailure.unableToGet() = _UnableToGet;
}
