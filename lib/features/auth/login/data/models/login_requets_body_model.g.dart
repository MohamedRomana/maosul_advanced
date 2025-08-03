part of 'login_requets_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequetsBodyModel _$LoginRequetsBodyModelFromJson(
  Map<String, dynamic> json,
) => LoginRequetsBodyModel(
  lang: json['lang'] as String,
  userType: json['user_type'] as String,
  phoneCode: json['phone_code'] as String,
  phone: json['phone'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$LoginRequetsBodyModelToJson(
  LoginRequetsBodyModel instance,
) => <String, dynamic>{
  'lang': instance.lang,
  'user_type': instance.userType,
  'phone_code': instance.phoneCode,
  'phone': instance.phone,
  'password': instance.password,
};
