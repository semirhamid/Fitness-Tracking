import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:fitnesstracker/domain/data/local/SharedPrefs/i_shared_pref_service.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../common/api_urls.dart';
import '../../domain/http/i_http_client.dart';
import '../auth/user_dto.dart';
import './string_extension.dart';

@LazySingleton(as: IHttpClient)
@injectable
class MyHttpClient implements IHttpClient {
  static String baseUrl = ApiUrls.baseUrl;
  final ISharedPrefsService _sharedPrefsService;
  final http.Client _httpClient = http.Client();

  MyHttpClient(this._sharedPrefsService);

  Future<String> get _authToken async {
    var shared = await _sharedPrefsService.getToken();
    if (shared == null) {
      tokenRefresher();
    }
    return shared ?? "";
  }

  Future<http.Response> get(String url,
      {Map<String, String> headers = const {}}) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    return await _httpClient.get(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
    );
  }

  Future<http.Response> post(String url,
      {Map<String, String> headers = const <String, String>{},
      Object? body,
      String contentType = "application/json"}) async {
    String token = await _sharedPrefsService.getToken() ?? "";
    ;
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': contentType,
      'Authorization': 'Bearer $token'
    };

    return _httpClient.post(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
      body: body,
    );
  }

  Future<http.Response> put(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': contentType,
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    return _httpClient.put(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
      body: body,
    );
  }

  Future<http.Response> patch(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': contentType,
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    return _httpClient.patch(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
      body: body,
    );
  }

  Future<http.Response> delete(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': contentType,
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    return _httpClient.delete(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
      body: body,
    );
  }

  Future<http.StreamedResponse> multiPartRequest(
    String url,
    String method, {
    Map<String, String> headers = const {},
    Map<String, dynamic> body = const {},
    Map<String, File> files = const {},
  }) async {
    String token = await _sharedPrefsService.getToken() ?? "";
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': "multipart/form-data",
      if (_authToken != null) 'Authorization': 'Bearer $token'
    };

    var request = http.MultipartRequest(method, Uri.parse(baseUrl + url));

    // Add headers
    // request.headers.addAll(headersWithContentTypeAndAuth);

    // Add files to the request.
    if (files.isNotEmpty) {
      files.forEach((key, value) async {
        request.files.add(await http.MultipartFile.fromPath(key, value.path));
      });
    }

    // Add body to the request.
    if (body.isNotEmpty) {
      body.forEach((key, value) {
        request.fields[key] = value.toString();
      });
    }

    return await request.send();
  }

  @override
  Future<void> tokenRefresher() async {
    String token = await _authToken;
    String refreshToken = await _sharedPrefsService.getRefreshToken() ?? "";
    int expiry = await _sharedPrefsService.getExpiry() ?? 0;
    if (token == "" || DateTime.now().millisecondsSinceEpoch >= expiry) {
      refresh(token, refreshToken);
    }
  }

  Future<void> refresh(String token, String refreshToken) async {
    final url = Uri.parse('${ApiUrls.baseUrl}${ApiUrls.refreshToken}');
    final body = json.encode({
      'token': token,
      'refreshToken': refreshToken,
    });

    try {
      final response = await _httpClient.post(
        url,
        body: body,
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final String newToken = jsonResponse['token'];

        final Map<String, dynamic> decodedToken = JwtDecoder.decode(newToken);
        final String id = decodedToken['Id'];
        final String newRefreshToken = jsonResponse['refreshToken'];
        dynamic roleField = decodedToken['role'];
        List<String> role;

        if (roleField is String) {
          role = [roleField];
        } else if (roleField is List) {
          role = List<String>.from(roleField);
        } else {
          role = [];
        }

        final String name = decodedToken['name'];
        final String emailAddress = decodedToken['email'];
        final int expireTime = decodedToken['exp'];

        UserDto userDto = UserDto(
          id: id,
          refreshToken: newRefreshToken,
          token: newToken,
          role: role,
          name: name,
          emailAddress: emailAddress,
          expireTime: expireTime,
        );

        await _sharedPrefsService.setAuthResponse(userDto);
      }
    } catch (e) {
      // Handle the error case as needed
      print('Error: $e');
    }
  }
}
