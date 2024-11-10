import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

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
