part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.data(ExperienceResponse data) = HomeStateData;
  const factory HomeState.noData() = HomeStateNoData;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.error(String message) = HomeStateError;
  const factory HomeState.message(String message) = HomeStateMessage;
}
