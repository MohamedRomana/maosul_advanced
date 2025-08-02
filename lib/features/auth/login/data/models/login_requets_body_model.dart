import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_requets_body_model.g.dart';

@JsonSerializable()
class LoginRequetsBodyModel {
  final String lang;
  @JsonKey(name: 'user_type')
  final String userType;
  @JsonKey(name: 'phone_code')
  final String phoneCode;
  final String phone;
  final String password;

  LoginRequetsBodyModel({
    required this.lang,
    required this.userType,
    required this.phoneCode,
    required this.phone,
    required this.password,
  });
  
  factory LoginRequetsBodyModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequetsBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequetsBodyModelToJson(this);
}
