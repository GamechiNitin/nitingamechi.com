part of 'resume_bloc.dart';

@freezed
class ResumeEvent with _$ResumeEvent {
  const factory ResumeEvent.fetchData() = _FetchData;
  const factory ResumeEvent.refresh() = _Refresh;
}
