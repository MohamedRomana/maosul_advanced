// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_pass_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPassResponseModel _$ResetPassResponseModelFromJson(
  Map<String, dynamic> json,
) => ResetPassResponseModel(
  msg: json['msg'] as String?,
  key: (json['key'] as num?)?.toInt(),
  showImage: json['show_image'] as bool?,
);


// ignore: unused_element
Map<String, dynamic> _$ResetPassResponseModelToJson(
  ResetPassResponseModel instance,
) => <String, dynamic>{
  'msg': instance.msg,
  'key': instance.key,
  'show_image': instance.showImage,
};
