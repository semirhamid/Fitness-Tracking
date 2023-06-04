import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/plan/plan_type_failures.dart';


import '../../infrastructure/plan/plan_type_dto.dart';
import '../../infrastructure/plan/plan_type_form_dto.dart';
import 'plan_failures.dart';

abstract class IPlanTypeRepository {
  Future<List<PlanTypeDto>> getAllPlanType();
  Future<Either<PlanTypeFailure, Unit>> create(PlanTypeFormDto planTypeFormDto);
  Future<Either<PlanTypeFailure, Unit>> update(PlanTypeFormDto planTypeFormDto);
  Future<Either<PlanTypeFailure, Unit>> delete(int planId);
  Future<PlanTypeDto> getPlanType(int id);
}
