// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_product_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowProductBodyModel _$ShowProductBodyModelFromJson(
  Map<String, dynamic> json,
) => ShowProductBodyModel(
  lang: json['lang'] as String,
  userId: json['user_id'] as String,
  serviceId: json['service_id'] as String,
);

Map<String, dynamic> _$ShowProductBodyModelToJson(
  ShowProductBodyModel instance,
) => <String, dynamic>{
  'lang': instance.lang,
  'user_id': instance.userId,
  'service_id': instance.serviceId,
};
