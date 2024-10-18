import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nitingamechi/ui/features/project/data/project_response.dart';
import 'package:nitingamechi/ui/features/project/repository/project_repository.dart';

part 'project_event.dart';
part 'project_state.dart';
part 'project_bloc.freezed.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc() : super(const ProjectState.initial()) {
    on<_FetchData>(fetchData);
  }

  FutureOr<void> fetchData(_FetchData event, Emitter<ProjectState> emit) async {
    emit(const ProjectState.loading());

    await Future.delayed(const Duration(seconds: 1));

    final response = await ProjectRepository.fetchDataAPI();

    if (response.$1 != null) {
      log(response.$1!.toJson().toString());
      List<ProjectModel> data = [];
      data.addAll(response.$1!.data);
      if (data.isEmpty) {
        emit(const ProjectState.noData());
      } else {
        emit(ProjectState.data(response.$1!));
      }
    } else {
      emit(ProjectState.error(response.$2?.message ?? "No result"));
    }
  }
}
