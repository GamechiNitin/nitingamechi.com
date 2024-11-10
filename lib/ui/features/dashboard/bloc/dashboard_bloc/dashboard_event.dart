part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.fetchData() = _FetchData;
  const factory DashboardEvent.refresh() = _Refresh;
}
