part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchData() = _FetchData;
  const factory HomeEvent.refresh() = _Refresh;
}
