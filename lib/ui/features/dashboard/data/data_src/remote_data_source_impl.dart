// data/data_sources/remote_data_source_impl.dart
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:nitingamechi/core/network/api_result.dart';
import 'package:nitingamechi/core/network/endpoint.dart';
import 'package:nitingamechi/core/network/network_client.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/remote_data_source.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/welcome_response.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final NetworkClient networkClient;

  RemoteDataSourceImpl(this.networkClient);

  @override
  Future<ApiResult<DashboardResponse>> fetchDataFromApi() async {
    try {
      if (kDebugMode) {
        // Simulate data from a local JSON file for debugging purposes
        String path = 'assets/json/data.json';
        final source = await rootBundle.loadString(path);
        DashboardResponse response = DashboardResponse.fromJson(
          jsonDecode(source),
        );
        return ApiResult.success(response, 200); // Success with status code 200
      } else {
        // Make the actual network request
        ApiResult data = await networkClient.get(Endpoint.fetchHomeData);

        if (data.isSuccess) {
          DashboardResponse response = DashboardResponse.fromJson(
            jsonDecode(jsonEncode(data)),
          );
          return ApiResult.success(response, 200);
        } else {
          return ApiResult.error(null, data.statusCode!, data.message!);
        }
      }
    } catch (e) {
      log('Unknown error: $e');
      return ApiResult.error(null, 0, e.toString());
    }
  }
}
