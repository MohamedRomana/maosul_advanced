// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoresBodyModel _$StoresBodyModelFromJson(Map<String, dynamic> json) =>
    StoresBodyModel(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      lang: json['lang'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$StoresBodyModelToJson(StoresBodyModel instance) =>
    <String, dynamic>{
      'lang': instance.lang,
      'user_id': instance.userId,
      'lat': instance.lat,
      'lng': instance.lng,
    };
