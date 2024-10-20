import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nitingamechi/core/data/company/company_model.dart';
import 'package:nitingamechi/ui/features/project/data/project_response.dart';

part 'experience_response.freezed.dart';
part 'experience_response.g.dart';

@freezed
class ExperienceResponse with _$ExperienceResponse {
  const factory ExperienceResponse({
    @JsonKey(name: "experience") @Default([]) List<Company> company,
    @JsonKey(name: "project") @Default([]) List<ProjectModel> project,
  }) = _ExperienceResponse;

  factory ExperienceResponse.fromJson(Map<String, dynamic> json) =>
      _$ExperienceResponseFromJson(json);
}
