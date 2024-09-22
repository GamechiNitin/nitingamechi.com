part of 'resume_bloc.dart';

@freezed
class ResumeState with _$ResumeState {
  const factory ResumeState.initial() = _Initial;
  const factory ResumeState.data(ResumeResponse data) = ResumeStateData;
  const factory ResumeState.noData() = ResumeStateNoData;
  const factory ResumeState.loading() = ResumeStateLoading;
  const factory ResumeState.error(String message) = ResumeStateError;
  const factory ResumeState.message(String message) = ResumeStateMessage;
}
