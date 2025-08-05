import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_request_body_model.g.dart';

@JsonSerializable()
class HomeRequestBodyModel {
  final String lang;
  @JsonKey(name: 'user_id')
  final String userId;

  HomeRequestBodyModel({
    required this.lang,
    required this.userId,
  });

  factory HomeRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$HomeRequestBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeRequestBodyModelToJson(this);
}
