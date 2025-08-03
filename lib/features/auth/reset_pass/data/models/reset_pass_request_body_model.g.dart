// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_pass_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPassRequestBodyModel _$ResetPassRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => ResetPassRequestBodyModel(
  userId: json['user_id'] as String,
  code: json['code'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$ResetPassRequestBodyModelToJson(
  ResetPassRequestBodyModel instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'code': instance.code,
  'password': instance.password,
};
