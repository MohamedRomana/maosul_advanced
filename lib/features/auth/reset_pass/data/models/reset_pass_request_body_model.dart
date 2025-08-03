import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_pass_request_body_model.g.dart';

@JsonSerializable()
class ResetPassRequestBodyModel {
  @JsonKey(name: 'user_id')
  final String userId;
  final String code;
  final String password;

  ResetPassRequestBodyModel({
    required this.userId,
    required this.code,
    required this.password,
  });

  factory ResetPassRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPassRequestBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPassRequestBodyModelToJson(this);
}
