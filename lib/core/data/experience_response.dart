import 'package:freezed_annotation/freezed_annotation.dart';

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
    @JsonKey(name: "features") String? features,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "github") String? github,
    @JsonKey(name: "playstore") String? playstore,
    @JsonKey(name: "stack") List<String>? stack,
    @JsonKey(name: "description") List<String>? description,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
