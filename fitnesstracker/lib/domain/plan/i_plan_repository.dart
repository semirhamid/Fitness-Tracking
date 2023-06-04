import 'package:dartz/dartz.dart';

import '../../infrastructure/plan/plan_dto.dart';
import '../../infrastructure/plan/plan_type_dto.dart';
import '../../infrastructure/plan/plan_form_dto.dart';
import 'plan_failures.dart';

abstract class IPlanRepository {
  Future<List<PlanDto>> getAllPlan();
  Future<Either<PlanFailure, Unit>> create(PlanFormDto planFormDto);
  Future<Either<PlanFailure, Unit>> update(PlanFormDto planFormDto);
  Future<Either<PlanFailure, Unit>> delete(int planId);
  Future<PlanDto> getPlan(int id);
}
