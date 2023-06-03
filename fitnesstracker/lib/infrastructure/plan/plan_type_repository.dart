import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/infrastructure/plan/plan_type_form_dto.dart';
import 'package:fitnesstracker/infrastructure/plan/plan_type_dto.dart';
import 'package:fitnesstracker/domain/plan/plan_failures.dart';
import 'package:injectable/injectable.dart';

import '../../common/api_urls.dart';
import '../../domain/data/local/SharedPrefs/i_shared_pref_service.dart';
import '../../domain/http/i_http_client.dart';
import '../../domain/plan/i_plan_type_repository.dart';
import '../../domain/plan/plan_type_failures.dart';
import '../auth/user_role/user_role_dto.dart';
import '../http/my_http_client.dart';

@LazySingleton(as: IPlanTypeRepository)
@injectable
class PlanTypeRepository implements IPlanTypeRepository {
  final IHttpClient _httpClient;
  final ISharedPrefsService _sharedPrefsService;
  PlanTypeRepository(this._httpClient, this._sharedPrefsService);

  @override
  Future<Either<PlanTypeFailure, Unit>> create(
      PlanTypeFormDto planTypeFormDto) async {
    var response = await _httpClient.post(ApiUrls.createPlanTypesPlans,
        body: planTypeFormDto.toJson(),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const PlanTypeFailure.unableToCreate());
    }
  }

  @override
  Future<Either<PlanTypeFailure, Unit>> delete(int planId) async {
    var response =
        await _httpClient.post('${ApiUrls.deletePlanTypesPlans}/$planId');

    if (response.statusCode == 200) {
      await _httpClient.tokenRefresher();
      return right(unit);
    } else {
      return left(const PlanTypeFailure.unableToDelete());
    }
  }
  @override
  Future<Either<PlanTypeFailure, Unit>> deletePlanTpeDay(int planId, int day) async {
    var response =
        await _httpClient.post('${ApiUrls.deletePlanTypesPlanByPlanIdDay}planId=$planId&day=$day');

    if (response.statusCode == 200) {
      await _httpClient.tokenRefresher();
      return right(unit);
    } else {
      return left(const PlanTypeFailure.unableToDelete());
    }
  }

  @override
  Future<PlanTypeDto> getPlanType(int id) async {
    print("plan type finding by id from repository");
    var response = await _httpClient.get('${ApiUrls.getPlanTypesPlansById}$id');
    print(response);
    return PlanTypeDto.fromJson(json.decode(response.body));
  }

  @override
  Future<List<PlanTypeDto>> getAllPlanType() async {
    var response = await _httpClient.get(ApiUrls.getAllPlanTypesPlans);

    return (json.decode(response.body) as List)
        .map((i) => PlanTypeDto.fromJson(i))
        .toList();
  }

  @override
  Future<Either<PlanTypeFailure, Unit>> update(
      PlanTypeFormDto planTypeFormDto) async {
    Map<String, dynamic> body = {
      "planId": planTypeFormDto.planId,
      "day": planTypeFormDto.day,
      "DietIds": planTypeFormDto.dietIds,
      "WorkoutIds": planTypeFormDto.workoutIds
    };

    var response = await _httpClient.put(
      ApiUrls.updatePlanTypesPlans,
      body: json.encode(body),
    );
    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const PlanTypeFailure.unableToCreate());
    }
  }
}
