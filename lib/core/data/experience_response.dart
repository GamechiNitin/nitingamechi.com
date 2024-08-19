import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_response.freezed.dart';
part 'experience_response.g.dart';

@freezed
class ExperienceResponse with _$ExperienceResponse {
  const factory ExperienceResponse({
    @JsonKey(name: "experience") @Default([]) List<Company> company,
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
