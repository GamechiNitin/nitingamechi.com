import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nitingamechi/ui/features/resume/data/resume_response.dart';
import 'package:nitingamechi/ui/features/resume/repository/resume_repository.dart';

part 'resume_event.dart';
part 'resume_state.dart';
part 'resume_bloc.freezed.dart';

class ResumeBloc extends Bloc<ResumeEvent, ResumeState> {
  ResumeBloc() : super(const ResumeState.initial()) {
    on<_FetchData>(fetchData);
  }

  FutureOr<void> fetchData(_FetchData event, Emitter<ResumeState> emit) async {
    emit(const ResumeState.loading());

    await Future.delayed(const Duration(seconds: 1));

    final response = await ResumeRepository.fetchDataAPI();

    if (response.$1 != null) {
      log(response.$1!.toJson().toString());
      List<Education> data = [];
      data.addAll(response.$1!.education);
      if (data.isEmpty) {
        emit(const ResumeState.noData());
      } else {
        emit(ResumeState.data(response.$1!));
      }
    } else {
      // emit(HomeState.error(response.$2?.message ?? "No result"));
      emit(ResumeState.error(response.$2?.message ?? "No result"));
    }
  }
}
