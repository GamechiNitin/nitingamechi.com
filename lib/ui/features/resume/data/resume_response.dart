import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_response.freezed.dart';
part 'resume_response.g.dart';

@freezed
class ResumeResponse with _$ResumeResponse {
  const factory ResumeResponse({
    @JsonKey(name: "education") @Default([]) List<Education> education,
    @JsonKey(name: "experience") @Default([]) List<Company> company,
    @JsonKey(name: "project") @Default([]) List<Project> project,
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

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: "company") String? company,
    @JsonKey(name: "timeline") String? timeline,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "position") String? position,
    @JsonKey(name: "stack") List<String>? stack,
    @JsonKey(name: "description") List<String>? description,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "sub_title") String? subTitle,
    @JsonKey(name: "features") List<String>? features,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "github") String? github,
    @JsonKey(name: "playstore") String? playstore,
    @JsonKey(name: "stack") List<String>? stack,
    @JsonKey(name: "description") List<String>? description,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
