// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_pass_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPassRequestBodyModel _$ForgetPassRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => ForgetPassRequestBodyModel(
  lang: json['lang'] as String,
  phoneCode: json['phone_code'] as String,
  phone: json['phone'] as String,
);

Map<String, dynamic> _$ForgetPassRequestBodyModelToJson(
  ForgetPassRequestBodyModel instance,
) => <String, dynamic>{
  'lang': instance.lang,
  'phone_code': instance.phoneCode,
  'phone': instance.phone,
};
