import 'dart:convert';
import 'package:dio/dio.dart';
import 'api_result.dart';
import 'network_client.dart';

class DioNetworkClient implements NetworkClient {
  final String baseUrl;
  final Dio dioClient;

  DioNetworkClient({
    required this.baseUrl,
    Dio? client,
  }) : dioClient = client ?? Dio();

  @override
  Future<ApiResult> get(String endpoint) async {
    try {
      final response = await dioClient.get('$baseUrl$endpoint');
      return _handleResponse(response);
    } catch (e) {
      return ApiResult.error('Network error: $e', 500, "");
    }
  }

  @override
  Future<ApiResult> post(String endpoint,
      {required Map<String, dynamic> body}) async {
    try {
      final response = await dioClient.post(
        '$baseUrl$endpoint',
        data: jsonEncode(body),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return _handleResponse(response);
    } catch (e) {
      return ApiResult.error('Network error: $e', 500, "");
    }
  }

  @override
  Future<ApiResult> put(String endpoint,
      {required Map<String, dynamic> body}) async {
    try {
      final response = await dioClient.put(
        '$baseUrl$endpoint',
        data: jsonEncode(body),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return _handleResponse(response);
    } catch (e) {
      return ApiResult.error('Network error: $e', 500, "");
    }
  }

  @override
  Future<ApiResult> delete(String endpoint) async {
    try {
      final response = await dioClient.delete('$baseUrl$endpoint');
      return _handleResponse(response);
    } catch (e) {
      return ApiResult.error('Network error: $e', 500, "");
    }
  }

  ApiResult _handleResponse(Response response) {
    final int statusCode = response.statusCode ?? 0;
    final dynamic body = response.data;

    if (statusCode >= 200 && statusCode < 300) {
      return ApiResult.success(body, statusCode);
    } else if (statusCode == 400) {
      return ApiResult.error(
        _parseErrorBody(body),
        statusCode,
        'Bad Request: $body',
      );
    } else if (statusCode == 401) {
      return ApiResult.error(
        _parseErrorBody(body),
        statusCode,
        'Unauthorized: $body',
      );
    } else if (statusCode == 404) {
      return ApiResult.error(
        _parseErrorBody(body),
        statusCode,
        'Not Found: $body',
      );
    } else if (statusCode == 500) {
      return ApiResult.error(
        _parseErrorBody(body),
        statusCode,
        'Internal Server Error: $body',
      );
    } else {
      return ApiResult.error(
        _parseErrorBody(body),
        statusCode,
        'Unexpected error occurred',
      );
    }
  }

  // Helper method to parse error body into a string
  String _parseErrorBody(dynamic body) {
    if (body is String) {
      return body;
    } else if (body is Map) {
      return jsonEncode(
          body); // You can customize this based on your response format
    } else {
      return 'Unknown error';
    }
  }
}
