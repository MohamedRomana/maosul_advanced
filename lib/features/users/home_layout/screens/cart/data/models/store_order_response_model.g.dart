// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreOrderResponseModel _$StoreOrderResponseModelFromJson(
  Map<String, dynamic> json,
) => StoreOrderResponseModel(
  key: (json['key'] as num?)?.toInt(),
  msg: json['msg'] as String?,
  showImage: json['show_image'] as bool?,
  notificationCount: (json['notification_count'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : OrderData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StoreOrderResponseModelToJson(
  StoreOrderResponseModel instance,
) => <String, dynamic>{
  'key': instance.key,
  'msg': instance.msg,
  'show_image': instance.showImage,
  'notification_count': instance.notificationCount,
  'data': instance.data,
};

OrderData _$OrderDataFromJson(Map<String, dynamic> json) => OrderData(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  userName: json['user_name'] as String?,
  userPhone: json['user_phone'] as String?,
  userLat: (json['user_lat'] as num?)?.toDouble(),
  userLng: (json['user_lng'] as num?)?.toDouble(),
  userDistance: (json['user_distance'] as num?)?.toInt(),
  userAddress: json['user_address'] as String?,
  providerDebt: (json['provider_debt'] as num?)?.toInt(),
  providerId: (json['provider_id'] as num?)?.toInt(),
  providerName: json['provider_name'] as String?,
  providerPhone: json['provider_phone'] as String?,
  providerLat: (json['provider_lat'] as num?)?.toDouble(),
  providerLng: (json['provider_lng'] as num?)?.toDouble(),
  providerDeliveryTime: (json['provider_delivery_time'] as num?)?.toInt(),
  providerCountry: json['provider_country'] as String?,
  providerCity: json['provider_city'] as String?,
  providerAvatar: json['provider_avatar'] as String?,
  providerDistance: (json['provider_distance'] as num?)?.toInt(),
  delegateId: (json['delegate_id'] as num?)?.toInt(),
  delegateDebt: (json['delgate_debt'] as num?)?.toInt(),
  delegateName: json['delegate_name'] as String?,
  delegatePhone: json['delegate_phone'] as String?,
  delegateLat: (json['delegate_lat'] as num?)?.toDouble(),
  delegateLng: (json['delegate_lng'] as num?)?.toDouble(),
  delegateDistance: (json['delegate_distance'] as num?)?.toInt(),
  statusMap: json['status_map'] == null
      ? null
      : StatusMap.fromJson(json['status_map'] as Map<String, dynamic>),
  status: json['status'] as String?,
  statusF: json['status_f'] as String?,
  paymentMethod: json['payment_method'] as String?,
  paymentMethodF: json['payment_method_f'] as String?,
  subTotal: json['sub_total'] as String?,
  delivery: json['delivery'] as String?,
  valueAdded: json['value_added'] as String?,
  totalBeforePromo: json['total_before_promo'] as String?,
  totalAfterPromo: json['total_after_promo'] as String?,
  duration: json['duration'] as String?,
  isRated: json['is_rated'] as bool?,
  rate: (json['rate'] as num?)?.toInt(),
  desc: json['desc'] as String?,
  orderDateTime: json['order_date_time'] as String?,
  orderDate: json['order_date'] as String?,
  orderTime: json['order_time'] as String?,
  orderOffers: json['order_offers'] as List<dynamic>?,
  orderServices: (json['order_services'] as List<dynamic>?)
      ?.map((e) => OrderService.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderDataToJson(OrderData instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'user_name': instance.userName,
  'user_phone': instance.userPhone,
  'user_lat': instance.userLat,
  'user_lng': instance.userLng,
  'user_distance': instance.userDistance,
  'user_address': instance.userAddress,
  'provider_debt': instance.providerDebt,
  'provider_id': instance.providerId,
  'provider_name': instance.providerName,
  'provider_phone': instance.providerPhone,
  'provider_lat': instance.providerLat,
  'provider_lng': instance.providerLng,
  'provider_delivery_time': instance.providerDeliveryTime,
  'provider_country': instance.providerCountry,
  'provider_city': instance.providerCity,
  'provider_avatar': instance.providerAvatar,
  'provider_distance': instance.providerDistance,
  'delegate_id': instance.delegateId,
  'delgate_debt': instance.delegateDebt,
  'delegate_name': instance.delegateName,
  'delegate_phone': instance.delegatePhone,
  'delegate_lat': instance.delegateLat,
  'delegate_lng': instance.delegateLng,
  'delegate_distance': instance.delegateDistance,
  'status_map': instance.statusMap,
  'status': instance.status,
  'status_f': instance.statusF,
  'payment_method': instance.paymentMethod,
  'payment_method_f': instance.paymentMethodF,
  'sub_total': instance.subTotal,
  'delivery': instance.delivery,
  'value_added': instance.valueAdded,
  'total_before_promo': instance.totalBeforePromo,
  'total_after_promo': instance.totalAfterPromo,
  'duration': instance.duration,
  'is_rated': instance.isRated,
  'rate': instance.rate,
  'desc': instance.desc,
  'order_date_time': instance.orderDateTime,
  'order_date': instance.orderDate,
  'order_time': instance.orderTime,
  'order_offers': instance.orderOffers,
  'order_services': instance.orderServices,
};

StatusMap _$StatusMapFromJson(Map<String, dynamic> json) => StatusMap(
  refused: json['refused'] as bool?,
  isNew: json['new'] as bool?,
  inWay: json['in_way'] as bool?,
  finish: json['finish'] as bool?,
);

Map<String, dynamic> _$StatusMapToJson(StatusMap instance) => <String, dynamic>{
  'refused': instance.refused,
  'new': instance.isNew,
  'in_way': instance.inWay,
  'finish': instance.finish,
};

OrderService _$OrderServiceFromJson(Map<String, dynamic> json) => OrderService(
  id: (json['id'] as num?)?.toInt(),
  serviceId: (json['service_id'] as num?)?.toInt(),
  serviceTitle: json['service_title'] as String?,
  servicePrice: (json['service_price'] as num?)?.toInt(),
  serviceImage: json['service_image'] as String?,
  count: (json['count'] as num?)?.toInt(),
  total: json['total'] as String?,
  totalWithValue: json['total_with_value'] as String?,
  valueAdded: json['value_added'] as String?,
  providerId: (json['provider_id'] as num?)?.toInt(),
  providerName: json['provider_name'] as String?,
  providerPhone: json['provider_phone'] as String?,
  providerLat: (json['provider_lat'] as num?)?.toDouble(),
  providerLng: (json['provider_lng'] as num?)?.toDouble(),
  providerDistance: (json['provider_distance'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderServiceToJson(OrderService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.serviceId,
      'service_title': instance.serviceTitle,
      'service_price': instance.servicePrice,
      'service_image': instance.serviceImage,
      'count': instance.count,
      'total': instance.total,
      'total_with_value': instance.totalWithValue,
      'value_added': instance.valueAdded,
      'provider_id': instance.providerId,
      'provider_name': instance.providerName,
      'provider_phone': instance.providerPhone,
      'provider_lat': instance.providerLat,
      'provider_lng': instance.providerLng,
      'provider_distance': instance.providerDistance,
    };
