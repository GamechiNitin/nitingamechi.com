import 'package:nitingamechi/core/network/api_result.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/dashboard_response.dart';

abstract class RemoteDataSource {
  Future<ApiResult<DashboardResponse>> fetchDataFromApi();
}
