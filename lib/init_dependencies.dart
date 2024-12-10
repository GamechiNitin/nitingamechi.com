import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/local_data_source.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/local_data_source_impl.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/remote_data_source.dart';
import 'package:nitingamechi/ui/features/dashboard/data/data_src/remote_data_source_impl.dart';
import 'package:nitingamechi/ui/features/dashboard/data/repositories/dashboard_repository_impl.dart';
import 'package:nitingamechi/ui/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:nitingamechi/ui/features/dashboard/domain/use_cases/fetch_data_use_case.dart';
import 'package:nitingamechi/ui/features/dashboard/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/connection_checket.dart';
import 'core/network/dio_network_client.dart';
import 'core/network/http_network_client.dart';
import 'core/network/network_client.dart';

part 'init_dependencies_main.dart';
