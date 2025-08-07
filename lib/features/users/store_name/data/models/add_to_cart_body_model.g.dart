// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartBodyModel _$AddToCartBodyModelFromJson(Map<String, dynamic> json) =>
    AddToCartBodyModel(
      lang: json['lang'] as String,
      userId: json['user_id'] as String,
      serviceId: json['service_id'] as String,
      count: json['count'] as String,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$AddToCartBodyModelToJson(AddToCartBodyModel instance) =>
    <String, dynamic>{
      'lang': instance.lang,
      'user_id': instance.userId,
      'service_id': instance.serviceId,
      'count': instance.count,
      'notes': instance.notes,
    };
