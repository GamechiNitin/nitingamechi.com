import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nitingamechi/core/network/api_result.dart';
import 'network_client.dart';

class HttpNetworkClient implements NetworkClient {
  final String baseUrl;
  final http.Client httpClient;

  HttpNetworkClient({
    required this.baseUrl,
    http.Client? client,
  }) : httpClient = client ?? http.Client();

  @override
  Future<ApiResult> get(String endpoint) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');
    // Map<String, String>? headers;
    try {
      http.Response response = await httpClient.get(url);

      return _handleResponse(response);
    } catch (e) {
      return ApiResult.error(null, 0, e.toString());
    }
  }

  @override
  Future<ApiResult> post(String endpoint,
      {required Map<String, dynamic> body}) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await httpClient.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ApiResult> put(String endpoint,
      {required Map<String, dynamic> body}) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await httpClient.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ApiResult> delete(String endpoint) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await httpClient.delete(url);
      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  ApiResult _handleResponse(http.Response response) {
    final int statusCode = response.statusCode;
    final String body = response.body;

    if (statusCode >= 200 && statusCode < 300) {
      return ApiResult.success(body, statusCode);
    } else if (statusCode == 400) {
      return ApiResult.error(body, statusCode, "Unauthorized request");
    } else if (statusCode == 401) {
      return ApiResult.error(body, statusCode, "Unauthorized request");
    } else if (statusCode == 404) {
      return ApiResult.error(body, statusCode, "Not found");
    } else if (statusCode == 500) {
      return ApiResult.error(body, statusCode, "Not found");
    } else {
      throw Exception('Network error');
    }
  }
}
