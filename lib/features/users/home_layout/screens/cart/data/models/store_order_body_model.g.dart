// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_order_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreOrderBodyModel _$StoreOrderBodyModelFromJson(Map<String, dynamic> json) =>
    StoreOrderBodyModel(
      lang: json['lang'] as String,
      userId: json['user_id'] as String,
      paymentMethod: json['payment_method'] as String,
      title: json['title'] as String,
      address: json['address'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$StoreOrderBodyModelToJson(
  StoreOrderBodyModel instance,
) => <String, dynamic>{
  'lang': instance.lang,
  'user_id': instance.userId,
  'payment_method': instance.paymentMethod,
  'title': instance.title,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
};
