import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/infrastructure/plan/plan_dto.dart';
import 'package:fitnesstracker/infrastructure/plan/plan_form_dto.dart';
import 'package:injectable/injectable.dart';

import '../../common/api_urls.dart';
import '../../domain/http/i_http_client.dart';

import '../../domain/plan/i_plan_repository.dart';
import '../../domain/plan/plan_failures.dart';
import '../http/my_http_client.dart';

@LazySingleton(as: IPlanRepository)
@injectable
class PlanRepository implements IPlanRepository {
  final IHttpClient _httpClient;
  PlanRepository(this._httpClient);

  @override
  Future<Either<PlanFailure, Unit>> create(PlanFormDto planFormDto) async {
    Map<String, dynamic> body = {
      'title': planFormDto.title,
      'description': planFormDto.description,
      'level': planFormDto.level,
    };
    Map<String, File> files = {
      'imageUrl': planFormDto.imageUrl!,
    };
    var response = await _httpClient
        .multiPartRequest(ApiUrls.createPlan, 'POST', files: files, body: body);

    if (response.statusCode == 201) {
      return right(unit);
    } else {
      return left(const PlanFailure.unableToCreate());
    }
  }

  @override
  Future<Either<PlanFailure, Unit>> delete(int planFormDtoId) async {
    var response =
        await _httpClient.delete('${ApiUrls.deletePlan}$planFormDtoId');

    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const PlanFailure.unableToDelete());
    }
  }

  @override
  Future<PlanDto> getPlan(int id) async {
    var response = await _httpClient.get('${ApiUrls.getPlanById}$id');

    if (response.statusCode == 200) {
      return PlanDto.fromJson(json.decode(response.body));
    } else {
      return const PlanDto(
          id: 0, title: "", description: "", level: "", imageUrl: "");
    }
  }

  @override
  Future<Either<PlanFailure, Unit>> update(PlanFormDto planFormDto) async {
    Map<String, dynamic> body = {
      'title': planFormDto.title,
      'description': planFormDto.description,
      'level': planFormDto.level,
      'id': planFormDto.id,
    };
    Map<String, File> files = {
      'imageUrl': planFormDto.imageUrl!,
    };
    var response = await _httpClient.multiPartRequest(ApiUrls.updatePlan, 'PUT',
        files: files, body: body);

    if (response.statusCode == 201) {
      return right(unit);
    } else {
      return left(const PlanFailure.unableToCreate());
    }
  }

  @override
  Future<List<PlanDto>> getAllPlan() async {
    var response = await _httpClient.get(ApiUrls.getAllPlan);
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => PlanDto.fromJson(e))
          .toList();
    } else {
      return [];
    }
  }
}
