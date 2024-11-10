import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nitingamechi/core/data/company_model/company_model.dart';
import 'package:nitingamechi/core/data/experience_response/experience_response.dart';
import 'package:nitingamechi/ui/features/dashboard/repository/dashboard_repository.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const DashboardState.initial()) {
    on<_FetchData>(fetchData);
  }

  FutureOr<void> fetchData(
      _FetchData event, Emitter<DashboardState> emit) async {
    emit(const DashboardState.loading());

    await Future.delayed(const Duration(seconds: 1));

    final response = await DashboardRepository.fetchDataAPI();

    if (response.$1 != null) {
      List<Company> data = [];
      data.addAll(response.$1!.company);
      if (data.isEmpty) {
        emit(const DashboardState.noData());
      } else {}
      emit(DashboardState.data(response.$1!));
    } else {
      // emit(HomeState.error(response.$2?.message ?? "No result"));
      emit(DashboardState.error(response.$2?.message ?? "No result"));
    }
  }
}
