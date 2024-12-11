import 'api_result.dart';

abstract class NetworkClient {
  Future<ApiResult> get(String endpoint);
  Future<ApiResult> post(String endpoint, {required Map<String, dynamic> body});
  Future<ApiResult> put(String endpoint, {required Map<String, dynamic> body});
  Future<ApiResult> delete(String endpoint);
}
