import 'package:freezed_annotation/freezed_annotation.dart';
part 'forget_pass_request_body_model.g.dart';

@JsonSerializable()
class ForgetPassRequestBodyModel {
  final String lang;
  @JsonKey(name: "phone_code")
  final String phoneCode;
  final String phone;

  ForgetPassRequestBodyModel({
    required this.lang,
    required this.phoneCode,
    required this.phone,
  });

  factory ForgetPassRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$ForgetPassRequestBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetPassRequestBodyModelToJson(this);
}
