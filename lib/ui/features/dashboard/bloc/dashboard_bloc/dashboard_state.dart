part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.data(ExperienceResponse data) =
      DashboardStateData;
  const factory DashboardState.noData() = DashboardStateNoData;
  const factory DashboardState.loading() = DashboardStateLoading;
  const factory DashboardState.error(String message) = DashboardStateError;
  const factory DashboardState.message(String message) = DashboardStateMessage;
}
