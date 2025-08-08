// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartResponseModel _$CartResponseModelFromJson(Map<String, dynamic> json) =>
    CartResponseModel(
      key: (json['key'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      showImage: json['show_image'] as bool?,
      valueAdded: (json['value_added'] as num?)?.toInt(),
      delivery: (json['delivery'] as num?)?.toInt(),
      deliveryTime: (json['delivery_time'] as num?)?.toInt(),
      notificationCount: (json['notification_count'] as num?)?.toInt(),
      providerId: (json['provider_id'] as num?)?.toInt(),
      cash: json['cash'] as bool?,
      transfer: json['transfer'] as bool?,
      online: json['online'] as bool?,
      notNow: json['not_now'] as bool?,
      notNowTotal: (json['not_now_total'] as num?)?.toInt(),
      notNowDuration: (json['not_now_duration'] as num?)?.toInt(),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartResponseModelToJson(CartResponseModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'msg': instance.msg,
      'show_image': instance.showImage,
      'value_added': instance.valueAdded,
      'delivery': instance.delivery,
      'delivery_time': instance.deliveryTime,
      'notification_count': instance.notificationCount,
      'provider_id': instance.providerId,
      'cash': instance.cash,
      'transfer': instance.transfer,
      'online': instance.online,
      'not_now': instance.notNow,
      'not_now_total': instance.notNowTotal,
      'not_now_duration': instance.notNowDuration,
      'addresses': instance.addresses,
      'data': instance.data,
    };

CartItem _$CartItemFromJson(Map<String, dynamic> json) => CartItem(
  id: (json['id'] as num?)?.toInt(),
  count: (json['count'] as num?)?.toInt(),
  price: (json['price'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
  totalWithValue: json['total_with_value'] as String?,
  providerId: (json['provider_id'] as num?)?.toInt(),
  providerTitle: json['provider_title'] as String?,
  sectionId: (json['section_id'] as num?)?.toInt(),
  sectionTitle: json['section_title'] as String?,
  serviceId: (json['service_id'] as num?)?.toInt(),
  serviceTitle: json['service_title'] as String?,
  desc: json['desc'] as String?,
  firstImage: json['first_image'] as String?,
);

Map<String, dynamic> _$CartItemToJson(CartItem instance) => <String, dynamic>{
  'id': instance.id,
  'count': instance.count,
  'price': instance.price,
  'total': instance.total,
  'total_with_value': instance.totalWithValue,
  'provider_id': instance.providerId,
  'provider_title': instance.providerTitle,
  'section_id': instance.sectionId,
  'section_title': instance.sectionTitle,
  'service_id': instance.serviceId,
  'service_title': instance.serviceTitle,
  'desc': instance.desc,
  'first_image': instance.firstImage,
};

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  address: json['address'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
};
