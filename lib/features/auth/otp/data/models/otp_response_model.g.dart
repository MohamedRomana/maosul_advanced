// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpResponseModel _$OtpResponseModelFromJson(Map<String, dynamic> json) =>
    OtpResponseModel(
      msg: json['msg'] as String?,
      key: (json['key'] as num?)?.toInt(),
      showImage: json['show_image'] as bool?,
    );

// ignore: unused_element
Map<String, dynamic> _$OtpResponseModelToJson(OtpResponseModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'key': instance.key,
      'show_image': instance.showImage,
    };
