import 'package:freezed_annotation/freezed_annotation.dart';
part 'sectios_body_model.g.dart';

@JsonSerializable()
class SectionsBodyModel {
  final String lang;
  @JsonKey(name: 'user_id')
  final String userId;

  SectionsBodyModel({
    required this.lang,
    required this.userId,
  });

  factory SectionsBodyModel.fromJson(Map<String, dynamic> json) =>
      _$SectionsBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$SectionsBodyModelToJson(this);
}
