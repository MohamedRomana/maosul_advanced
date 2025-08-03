import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_request_body_model.g.dart';

@JsonSerializable()
class OtpRequestBodyModel {
  final String lang;
  @JsonKey(name: 'user_id')
  final String userId;
  final String code;

  const OtpRequestBodyModel({
    required this.lang,
    required this.userId,
    required this.code,
  });

  factory OtpRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$OtpRequestBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$OtpRequestBodyModelToJson(this);
}
