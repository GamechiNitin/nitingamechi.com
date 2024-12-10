import 'package:nitingamechi/ui/features/dashboard/data/models/welcome_response.dart';

abstract class LocalDataSource {
  Future<void> cacheData(DashboardResponse response);
  Future<DashboardResponse?> getCachedData();
}
