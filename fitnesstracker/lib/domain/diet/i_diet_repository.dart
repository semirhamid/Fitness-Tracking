
import 'package:dartz/dartz.dart';

import '../../infrastructure/diet/diet_dto.dart';
import '../../infrastructure/diet/diet_form_dto.dart';
import 'diet_failures.dart';

abstract class IDietRepository {
  Future<List<DietDto>> getAllDiet();
  Future<Either<DietFailure, Unit>> create(DietFormDto dietFormDto);
  Future<Either<DietFailure, Unit>> update(DietFormDto dietFormDto);
  Future<Either<DietFailure, Unit>> delete(int dietId);
  Future<DietDto> getDiet(int id);
}
