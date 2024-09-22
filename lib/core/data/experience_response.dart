import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nitingamechi/core/data/company/company_model.dart';

import 'project/project_model.dart';

part 'experience_response.freezed.dart';
part 'experience_response.g.dart';

@freezed
class ExperienceResponse with _$ExperienceResponse {
  const factory ExperienceResponse({
    @JsonKey(name: "experience") @Default([]) List<Company> company,
    @JsonKey(name: "project") @Default([]) List<Project> project,
  }) = _ExperienceResponse;

  factory ExperienceResponse.fromJson(Map<String, dynamic> json) =>
      _$ExperienceResponseFromJson(json);
}
