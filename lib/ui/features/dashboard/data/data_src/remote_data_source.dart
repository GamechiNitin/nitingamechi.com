import 'package:nitingamechi/core/network/api_result.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/welcome_response.dart';

abstract class RemoteDataSource {
  Future<ApiResult<DashboardResponse>> fetchDataFromApi();
}
