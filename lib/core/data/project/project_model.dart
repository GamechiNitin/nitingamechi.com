import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

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
