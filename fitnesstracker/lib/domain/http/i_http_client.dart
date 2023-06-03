import 'dart:io';
import 'package:http/http.dart' as http;

abstract class IHttpClient {

  Future<http.Response> get(String url, {Map<String, String> headers});

  Future<http.Response> post(String url,
      {Map<String, String> headers, Object? body, String contentType});

  Future<http.Response> put(String url,
      {Map<String, String> headers, Object? body, String contentType});

  Future<http.Response> patch(String url,
      {Map<String, String> headers, Object? body, String contentType});

  Future<http.Response> delete(String url,
      {Map<String, String> headers, Object? body, String contentType});

  Future<http.StreamedResponse> multiPartRequest(String url, String method,
      {Map<String, String> headers,
      Map<String, dynamic> body,
      Map<String, File> files});

  Future<void> tokenRefresher();
  
}
