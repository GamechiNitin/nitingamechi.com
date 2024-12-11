import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_response.freezed.dart';
part 'dashboard_response.g.dart';

@freezed
class DashboardResponse with _$DashboardResponse {
  const factory DashboardResponse({
    @JsonKey(name: "bio") required Bio bio,
    @Default([]) @JsonKey(name: "project") List<Project> project,
    @Default([]) @JsonKey(name: "experience") List<Experience> experience,
    @Default([]) @JsonKey(name: "education") List<Education> education,
  }) = _DashboardResponse;

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);
}

@freezed
class Bio with _$Bio {
  const factory Bio({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "subTitle") String? subTitle,
    @JsonKey(name: "profession") String? profession,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "isLocal") bool? isLocal,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "about") String? about,
  }) = _Bio;

  factory Bio.fromJson(Map<String, dynamic> json) => _$BioFromJson(json);
}

@freezed
class Education with _$Education {
  const factory Education({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "timeline") String? timeline,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "website") String? website,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}

@freezed
class Experience with _$Experience {
  const factory Experience({
    @JsonKey(name: "company") String? company,
    @JsonKey(name: "timeline") String? timeline,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "position") String? position,
    @JsonKey(name: "stack") List<String>? stack,
    @JsonKey(name: "description") List<String>? description,
  }) = _Experience;

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "shortDescription") String? shortDescription,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "industry") String? industry,
    @JsonKey(name: "isLocal") bool? isLocal,
    @JsonKey(name: "technology") List<String>? technology,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "imagelist") List<String>? imagelist,
    @JsonKey(name: "appstore") String? appstore,
    @JsonKey(name: "playstore") String? playstore,
    @JsonKey(name: "sourceCode") String? sourceCode,
    @JsonKey(name: "website") String? website,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "projectGoals") List<String>? projectGoals,
    @JsonKey(name: "userBase") String? userBase,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
