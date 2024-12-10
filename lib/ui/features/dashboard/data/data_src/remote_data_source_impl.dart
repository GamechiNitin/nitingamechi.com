// data/data_sources/remote_data_source_impl.dart
import 'package:nitingamechi/core/network/network_client.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/remote_data_source.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/welcome_response.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final NetworkClient networkClient;

  RemoteDataSourceImpl(this.networkClient);

  @override
  Future<DashboardResponse> fetchDataFromApi() async {
    final response = await networkClient.get('/dashboard/data');

    if (response["code"] != null) {
      return DashboardResponse.fromJson(response);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
