// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpRequestBodyModel _$OtpRequestBodyModelFromJson(Map<String, dynamic> json) =>
    OtpRequestBodyModel(
      lang: json['lang'] as String,
      userId: json['user_id'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$OtpRequestBodyModelToJson(
  OtpRequestBodyModel instance,
) => <String, dynamic>{
  'lang': instance.lang,
  'user_id': instance.userId,
  'code': instance.code,
};
