import 'package:freezed_annotation/freezed_annotation.dart';

part 'diet_failures.freezed.dart';

@freezed
abstract class DietFailure with _$DietFailure {
  const factory DietFailure.unexpected() = _Unexpected;
  const factory DietFailure.insufficientPermission() = _InsufficientPermission;
  const factory DietFailure.unableToUpdate() = _UnableToUpdate;
  const factory DietFailure.unableToDelete() = _UnableToDelete;
  const factory DietFailure.unableToCreate() = _UnableToCreate;
  const factory DietFailure.unableToGet() = _UnableToGet;
}
