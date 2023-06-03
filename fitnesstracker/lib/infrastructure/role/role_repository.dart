import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/infrastructure/role/role_dto.dart';
import 'package:fitnesstracker/domain/role/role_failures.dart';
import 'package:fitnesstracker/domain/auth/user_role.dart';
import 'package:injectable/injectable.dart';

import '../../common/api_urls.dart';
import '../../domain/diet/diet_failures.dart';
import '../../domain/diet/i_diet_repository.dart';
import '../../domain/http/i_http_client.dart';
import '../../domain/role/i_role_repository.dart';
import '../role/user_dto.dart';
import '../http/my_http_client.dart' as myHttpClient;

@LazySingleton(as: IRoleRepository)
@injectable
class RoleRepository implements IRoleRepository {
  final IHttpClient _httpClient;
  RoleRepository(this._httpClient);

  @override
  Future<Either<RoleFailure, Unit>> addUserToRole(UserRole userRole) async {
    var response = await _httpClient.post(
        '${ApiUrls.addUserToRole}email=${userRole.email}&roleName=${userRole.role}');

    if (response.statusCode == 201) {
      return right(unit);
    } else {
      return left(const RoleFailure.unableToCreate());
    }
  }

  @override
  Future<Either<RoleFailure, Unit>> create(String roleName) async {
    var response = await _httpClient.post('${ApiUrls.createRole}$roleName');

    if (response.statusCode == 201) {
      return right(unit);
    } else {
      return left(const RoleFailure.unableToCreate());
    }
  }

  @override
  Future<Either<RoleFailure, Unit>> delete(String roleName) async {
    var response = await _httpClient.delete('${ApiUrls.deleteRole}$roleName');

    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const RoleFailure.unableToDelete());
    }
  }

  @override
  Future<List<RoleDto>> getAllRole() async {
    var response = await _httpClient.get(ApiUrls.getAllRole);
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => RoleDto.fromJson(e))
          .toList();
    } else {
      return [];
    }
  }

  @override
  Future<List<UserDto>> getAllUsers() async {
    var response = await _httpClient.get(ApiUrls.getAllUser);

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => UserDto.fromJson(e))
          .toList();
    } else {
      return [];
    }
  }

  @override
  Future<List<UserRole>> getUsersRole(String roleName) async {
    var response = await _httpClient.get(ApiUrls.getRoleUsers + roleName);

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => UserRole.fromJson(e))
          .toList();
    } else {
      return [];
    }
  }

  @override
  Future<Either<RoleFailure, Unit>> removeUserFromRole(
      UserRole userRole) async {
    var response = await _httpClient.delete(
        '${ApiUrls.removeUserFromRole}?email=${userRole.email}&roleName=${userRole.role}');

    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const RoleFailure.unableToDelete());
    }
  }
}
