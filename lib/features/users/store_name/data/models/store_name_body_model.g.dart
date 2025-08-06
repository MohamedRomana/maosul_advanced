// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_name_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreNameBodyModel _$StoreNameBodyModelFromJson(Map<String, dynamic> json) =>
    StoreNameBodyModel(
      lang: json['lang'] as String,
      userId: json['user_id'] as String,
      providerId: json['provider_id'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$StoreNameBodyModelToJson(StoreNameBodyModel instance) =>
    <String, dynamic>{
      'lang': instance.lang,
      'user_id': instance.userId,
      'provider_id': instance.providerId,
      'lat': instance.lat,
      'lng': instance.lng,
    };
