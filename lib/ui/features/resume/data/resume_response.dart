import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nitingamechi/core/data/company/company_model.dart';
import 'package:nitingamechi/ui/features/project/data/project_response.dart';

part 'resume_response.freezed.dart';
part 'resume_response.g.dart';

@freezed
class ResumeResponse with _$ResumeResponse {
  const factory ResumeResponse({
    @JsonKey(name: "education") @Default([]) List<Education> education,
    @JsonKey(name: "experience") @Default([]) List<Company> company,
    @JsonKey(name: "project") @Default([]) List<ProjectModel> project,
  }) = _ResumeResponse;

  factory ResumeResponse.fromJson(Map<String, dynamic> json) =>
      _$ResumeResponseFromJson(json);
}

@freezed
class Education with _$Education {
  const factory Education({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "timeline") String? timeline,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "website") String? website,
    @JsonKey(name: "description") String? description,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}
