import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:nitingamechi/core/error/exceptions.dart';

import 'network_client.dart';

class DioNetworkClient implements NetworkClient {
  final String baseUrl;
  final Dio dioClient;

  DioNetworkClient({
    required this.baseUrl,
    Dio? client,
  }) : dioClient = client ?? Dio();

  @override
  Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      final response = await dioClient.get('$baseUrl$endpoint');
      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> post(String endpoint,
      {required Map<String, dynamic> body}) async {
    try {
      final response = await dioClient.post(
        '$baseUrl$endpoint',
        data: jsonEncode(body),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> put(String endpoint,
      {required Map<String, dynamic> body}) async {
    try {
      final response = await dioClient.put(
        '$baseUrl$endpoint',
        data: jsonEncode(body),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> delete(String endpoint) async {
    try {
      final response = await dioClient.delete('$baseUrl$endpoint');
      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  Map<String, dynamic> _handleResponse(Response response) {
    final int statusCode = response.statusCode ?? 500;
    final String body = response.data.toString();

    if (statusCode >= 200 && statusCode < 300) {
      return jsonDecode(body);
    } else if (statusCode == 400) {
      throw BadRequestException(body);
    } else if (statusCode == 401) {
      throw UnauthorizedException('Unauthorized request');
    } else if (statusCode == 404) {
      throw NotFoundException('Not found');
    } else if (statusCode == 500) {
      throw InternalServerErrorException('Internal server error');
    } else {
      throw Exception('Network error');
    }
  }
}
