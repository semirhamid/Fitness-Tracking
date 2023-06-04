import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../common/api_urls.dart';
import '../../domain/diet/diet_failures.dart';
import '../../domain/diet/i_diet_repository.dart';
import '../../domain/http/i_http_client.dart';
import '../http/my_http_client.dart' as myHttpClient;
import 'diet_dto.dart';
import 'diet_form_dto.dart';

@LazySingleton(as: IDietRepository)
@injectable
class DietRepository implements IDietRepository {
  final IHttpClient _httpClient;
  DietRepository(this._httpClient);

  @override
  Future<Either<DietFailure, Unit>> create(DietFormDto dietFormDto) async {
    Map<String, dynamic> body = {
      'mealType': dietFormDto.mealType,
      'mealName': dietFormDto.mealName,
      'mealDescription': dietFormDto.mealDescription,
    };
    try {
      Map<String, File> files = {
        'imageUrl': dietFormDto.imageUrl!,
      };
      var response = await _httpClient.multiPartRequest(
          ApiUrls.createDiet, 'POST',
          files: files, body: body);

      return right(unit);
    } catch (e) {
      print(e);
      return left(const DietFailure.unableToCreate());
    }
  }

  @override
  Future<Either<DietFailure, Unit>> delete(int dietId) async {
    var response = await _httpClient.delete('${ApiUrls.deleteDiet}/$dietId');
    print("deleting diet from diet_repository");
    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const DietFailure.unableToDelete());
    }
  }

  @override
  Future<DietDto> getDiet(int id) async {
    var response = await _httpClient.get('${ApiUrls.getDietById}$id');

    if (response.statusCode == 200) {
      return DietDto.fromJson(json.decode(response.body));
    } else {
      return const DietDto(
          id: 0, mealType: '', mealName: '', mealDescription: '', imageUrl: '');
    }
  }

  @override
  Future<Either<DietFailure, Unit>> update(DietFormDto dietFormDto) async {
    Map<String, dynamic> body = {
      'mealType': dietFormDto.mealType,
      'mealName': dietFormDto.mealName,
      'mealDescription': dietFormDto.mealDescription,
    };
    try {
      Map<String, File> files = {
        'imageUrl': dietFormDto.imageUrl!,
      };
      var response = await _httpClient.multiPartRequest(
          "${ApiUrls.updateDiet}/${dietFormDto.id}", 'PUT',
          files: files, body: body);

      return right(unit);
    } catch (e) {
      print(e);
      return left(const DietFailure.unableToUpdate());
    }
  }

  @override
  Future<List<DietDto>> getAllDiet() async {
    print("Hi from diet Repository, I am getAllDiet");
    var response = await _httpClient.get(ApiUrls.getAllDiet);
    print("diet response");
    print(response.body);
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => DietDto.fromJson(e))
          .toList();
    } else {
      return [];
    }
  }
}
