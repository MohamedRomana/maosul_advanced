import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_body_model.g.dart';

@JsonSerializable()
class RegisterRequestBodyModel {
  final String lang;
  @JsonKey(name: "user_type")
  final String userType;
  @JsonKey(name: "first_name")
  final String firstName;
  final String email;
  @JsonKey(name: "phone_code")
  final String phoneCode;
  final String phone;
  final String password;
  final String address;
  final String lat;
  final String lng;

  RegisterRequestBodyModel({
    required this.lang,
    required this.userType,
    required this.firstName,
    required this.email,
    required this.phoneCode,
    required this.phone,
    required this.password,
    required this.address,
    required this.lat,
    required this.lng,
  });

  factory RegisterRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestBodyModelToJson(this);
}
