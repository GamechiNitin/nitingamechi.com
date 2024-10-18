import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_response.freezed.dart';
part 'project_response.g.dart';

@freezed
class ProjectResponse with _$ProjectResponse {
  const factory ProjectResponse({
    @JsonKey(name: "data") @Default([]) List<ProjectModel> data,
  }) = _ProjectResponse;

  factory ProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectResponseFromJson(json);
}

@freezed
class ProjectModel with _$ProjectModel {
  const factory ProjectModel({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "industry") String? industry,
    @JsonKey(name: "technology") List<String>? technology,
    @JsonKey(name: "playstore") String? playstore,
    @JsonKey(name: "appstore") String? appstore,
    @JsonKey(name: "sourceCode") String? sourceCode,
    @JsonKey(name: "category") CategoryEnum? category,
    @JsonKey(name: "description") String? description,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}

enum CategoryEnum {
  personal,
}
