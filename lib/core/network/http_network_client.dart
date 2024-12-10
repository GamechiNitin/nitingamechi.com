import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nitingamechi/core/error/exceptions.dart';
import 'network_client.dart';

class HttpNetworkClient implements NetworkClient {
  final String baseUrl;
  final http.Client httpClient;

  HttpNetworkClient({
    required this.baseUrl,
    http.Client? client,
  }) : httpClient = client ?? http.Client();

  @override
  Future<Map<String, dynamic>> get(String endpoint) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await httpClient.get(url);
      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> post(String endpoint,
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
  Future<Map<String, dynamic>> put(String endpoint,
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
  Future<Map<String, dynamic>> delete(String endpoint) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await httpClient.delete(url);
      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    final int statusCode = response.statusCode;
    final String body = response.body;

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
