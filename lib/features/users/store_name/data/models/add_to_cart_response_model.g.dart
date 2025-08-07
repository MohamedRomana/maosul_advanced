// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartResponseModel _$AddToCartResponseModelFromJson(
  Map<String, dynamic> json,
) => AddToCartResponseModel(
  key: (json['key'] as num?)?.toInt(),
  msg: json['msg'] as String?,
  showImage: json['show_image'] as bool?,
);

Map<String, dynamic> _$AddToCartResponseModelToJson(
  AddToCartResponseModel instance,
) => <String, dynamic>{
  'key': instance.key,
  'msg': instance.msg,
  'show_image': instance.showImage,
};
