part of 'project_bloc.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState.initial() = _Initial;
  const factory ProjectState.data(ProjectResponse data) = ProjectStateData;
  const factory ProjectState.noData() = ProjectStateNoData;
  const factory ProjectState.loading() = ProjectStateLoading;
  const factory ProjectState.error(String message) = ProjectStateError;
  const factory ProjectState.message(String message) = ProjectStateMessage;
}
