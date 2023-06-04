import 'dart:convert';

import 'package:fitnesstracker/domain/auth/user.dart';
import 'package:fitnesstracker/infrastructure/auth/user_dto.dart';
import 'package:http/http.dart' as http;
import 'package:fitnesstracker/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/auth/i_auth_repository.dart';
import 'package:fitnesstracker/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../common/api_urls.dart';
import '../../domain/data/local/SharedPrefs/i_shared_pref_service.dart';

@LazySingleton(as: IAuthRepository)
@injectable
class AuthRepository implements IAuthRepository {
  final ISharedPrefsService sharedPrefsService;
  final http.Client _httpClient = http.Client();

  AuthRepository(this.sharedPrefsService);

  @override
  Future<Either<AuthFailure, Unit>> register({
    required Name name,
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final url = Uri.parse(ApiUrls.register);
    final body = json.encode({
      'name': name.getOrCrash(),
      'email': emailAddress.getOrCrash(),
      'password': password.getOrCrash(),
    });

    try {
      final response = await _httpClient.post(
        url,
        body: body,
        headers: {
          'Content-Type': 'application/json',
        },
      ); // Print the response body
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final String token = jsonResponse['token'];
        final Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
        // Access the decoded token data
        final String id = decodedToken['Id'];
        final String refreshToken = jsonResponse['refreshToken'];
        dynamic roleField = decodedToken['role'];
        List<String> role;

        if (roleField is String) {
          role = [roleField];
        } else if (roleField is List) {
          role = List<String>.from(roleField);
        } else {
          role = []; // Set a default value or handle the error case as needed
        }
        final String name = decodedToken['name'];
        final String emailAddress = decodedToken['email'];
        final int expireTime = decodedToken['exp'];
        UserDto userDto = UserDto(
            id: id,
            refreshToken: refreshToken,
            token: token,
            role: role,
            name: name,
            emailAddress: emailAddress,
            expireTime: expireTime);
        await sharedPrefsService.setAuthResponse(userDto);
        return right(unit);
      } else {
        print("Error: Could not sign in");
        return left(const AuthFailure.invalidCredentials());
      }
    } catch (e) {
      // Handle exceptions
      print('Sign In Exception: $e');
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    final user = await sharedPrefsService.getAuthenticatedUser();
    if (user != null) {
      return optionOf(user);
    }
    return optionOf(user);
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await sharedPrefsService.removeAuthenticatedUser();
      return right(unit);
    } catch (e) {
    }
    return left(const AuthFailure.CouldnotLogout());
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword(String newPassword) {
    // Implement the change password logic
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn(
      {required EmailAddress emailAddress, required Password password}) async {
    final url = Uri.parse('${ApiUrls.baseUrl}${ApiUrls.login}');
    final body = json.encode({
      'email': emailAddress.getOrCrash(),
      'password': password.getOrCrash(),
    });

    try {
      final response = await _httpClient.post(
        url,
        body: body,
        headers: {
          'Content-Type': 'application/json',
        },
      ); // Print the response body
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final String token = jsonResponse['token'];

        final Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
        // Access the decoded token data
        final String id = decodedToken['Id'];
        final String refreshToken = jsonResponse['refreshToken'];
        dynamic roleField = decodedToken['role'];
        List<String> role;

        if (roleField is String) {
          role = [roleField];
        } else if (roleField is List) {
          role = List<String>.from(roleField);
        } else {
          role = []; // Set a default value or handle the error case as needed
        }
        final String name = decodedToken['name'];
        final String emailAddress = decodedToken['email'];
        final int expireTime = decodedToken['exp'];
        UserDto userDto = UserDto(
            id: id,
            refreshToken: refreshToken,
            token: token,
            role: role,
            name: name,
            emailAddress: emailAddress,
            expireTime: expireTime);
        await sharedPrefsService.setAuthResponse(userDto);
        return right(unit);
      } else {

        return left(const AuthFailure.invalidCredentials());
      }
    } catch (e) {

      return left(const AuthFailure.serverError());
    }
  }
}
