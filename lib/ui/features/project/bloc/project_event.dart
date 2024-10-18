part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.fetchData() = _FetchData;
  const factory ProjectEvent.refresh() = _Refresh;
}
