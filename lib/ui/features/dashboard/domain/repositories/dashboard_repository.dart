import 'package:dartz/dartz.dart';
import 'package:nitingamechi/core/error/error_message.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/welcome_response.dart';

abstract class DashboardRepository {
  Future<Either<DashboardResponse, ErrorMessage>> fetchData();
}
