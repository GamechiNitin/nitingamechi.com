import 'package:dartz/dartz.dart';
import 'package:nitingamechi/core/error/error_message.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/local_data_source.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/remote_data_source.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/dashboard_response.dart';
import 'package:nitingamechi/ui/features/dashboard/domain/repositories/dashboard_repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  DashboardRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<DashboardResponse, ErrorMessage>> fetchData() async {
    // Try to get cached data first
    final cachedData = await localDataSource.getCachedData();
    if (cachedData != null) {
      return Left(cachedData); // Return cached data if available
    }

    // If no cached data, fetch data from the API
    try {
      final remoteData = await remoteDataSource.fetchDataFromApi();
      // Cache the fetched data for future use
      await localDataSource.cacheData(remoteData.data!);
      return Left(remoteData.data!);
      // Return data fetched from API
    } catch (e) {
      return Right(ErrorMessage(message: e.toString()));
      // Return error message if the API call fails
    }
  }
}
