import 'package:nitingamechi/ui/features/dashboard/data/models/welcome_response.dart';

abstract class RemoteDataSource {
  Future<DashboardResponse> fetchDataFromApi();
}
