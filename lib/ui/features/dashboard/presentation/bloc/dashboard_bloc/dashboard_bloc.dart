import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nitingamechi/ui/features/dashboard/data/models/dashboard_response.dart';
import 'package:nitingamechi/ui/features/dashboard/domain/use_cases/fetch_data_use_case.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final FetchDataUseCase fetchDataUseCase;

  DashboardBloc(this.fetchDataUseCase) : super(const DashboardState.initial()) {
    on<_FetchData>(fetchData);
  }

  Future<void> fetchData(_FetchData event, Emitter<DashboardState> emit) async {
    emit(const DashboardState.loading());
    await Future.delayed(const Duration(seconds: 20));

    final result = await fetchDataUseCase();

    result.fold(
      (data) {
        if (data.project.isEmpty) {
          emit(const DashboardState.noData());
        } else {
          emit(DashboardState.data(data));
        }
      },
      (errorMessage) {
        log(errorMessage.message);
        emit(DashboardState.error(errorMessage.message));
      },
    );
  }
}
