abstract class NetworkClient {
  Future<Map<String, dynamic>> get(String endpoint);
  Future<Map<String, dynamic>> post(String endpoint,
      {required Map<String, dynamic> body});
  Future<Map<String, dynamic>> put(String endpoint,
      {required Map<String, dynamic> body});
  Future<Map<String, dynamic>> delete(String endpoint);
}
