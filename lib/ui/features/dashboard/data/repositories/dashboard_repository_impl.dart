import 'package:dartz/dartz.dart';
import 'package:nitingamechi/core/error/error_message.dart';
import 'package:nitingamechi/core/network/connection_checket.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/local_data_source.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/remote_data_source.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/dashboard_response.dart';
import 'package:nitingamechi/ui/features/dashboard/domain/repositories/dashboard_repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  final ConnectionChecker connectionChecker;

  DashboardRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectionChecker,
  });

  @override
  Future<Either<ErrorMessage, DashboardResponse>> fetchData() async {
    if (await connectionChecker.isConnected) {
      return await _fetchFromRemote();
    } else {
      return await _fetchFromCache();
    }
  }

  Future<Either<ErrorMessage, DashboardResponse>> _fetchFromRemote() async {
    try {
      final remoteData = await remoteDataSource.fetchDataFromApi();

      if (remoteData.isSuccess && remoteData.data != null) {
        await localDataSource.cacheData(remoteData.data!);
        return Right(
            remoteData.data!); // Right should represent success with data
      } else {
        // Return an error if remote data is unsuccessful
        return Left(ErrorMessage(
          message: remoteData.message ?? "No data",
          statusCode: remoteData.statusCode ?? 0,
        ));
      }
    } catch (e) {
      return Left(ErrorMessage(
        message: e.toString(),
        statusCode: 0, // Default statusCode for unknown errors
      ));
    }
  }

  Future<Either<ErrorMessage, DashboardResponse>> _fetchFromCache() async {
    try {
      final cachedData = await localDataSource.getCachedData();
      if (cachedData != null) {
        return Right(cachedData); // Return cached data if available
      } else {
        return Left(ErrorMessage(message: "No cached data", statusCode: 0));
      }
    } catch (e) {
      return Left(ErrorMessage(
        message: e.toString(),
        statusCode: 0, // Default statusCode for unknown errors
      ));
    }
  }
}
