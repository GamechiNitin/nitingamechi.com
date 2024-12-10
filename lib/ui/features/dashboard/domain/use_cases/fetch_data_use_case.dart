import 'package:dartz/dartz.dart';
import 'package:nitingamechi/core/error/error_message.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/welcome_response.dart';
import 'package:nitingamechi/ui/features/dashboard/domain/repositories/dashboard_repository.dart';

class FetchDataUseCase {
  final DashboardRepository repository;

  FetchDataUseCase(this.repository);

  Future<Either<DashboardResponse, ErrorMessage>> call() {
    return repository.fetchData();
  }
}
