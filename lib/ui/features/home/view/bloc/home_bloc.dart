import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nitingamechi/core/data/experience_response.dart';
import 'package:nitingamechi/ui/features/home/view/repository/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<_FetchData>(fetchData);
  }

  FutureOr<void> fetchData(_FetchData event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    await Future.delayed(const Duration(seconds: 1));

    final response = await HomeRepository.fetchDataAPI();

    if (response.$1 != null) {
      List<Company> data = [];
      data.addAll(response.$1!.company);
      if (data.isEmpty) {
        emit(const HomeState.noData());
      } else {
        emit(HomeState.data(data));
      }
    } else {
      // emit(HomeState.error(response.$2?.message ?? "No result"));
      emit(HomeState.error(response.$2?.message ?? "No result"));
    }
  }
}
