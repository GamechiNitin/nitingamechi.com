import 'package:dartz/dartz.dart';
import 'package:nitingamechi/core/error/error_message.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/dashboard_response.dart';

abstract class DashboardRepository {
  Future<Either<ErrorMessage, DashboardResponse>> fetchData();
}
