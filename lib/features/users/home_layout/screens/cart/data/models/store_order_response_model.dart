import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_order_response_model.g.dart';

@JsonSerializable()
class StoreOrderResponseModel {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  @JsonKey(name: 'notification_count')
  final int? notificationCount;
  final OrderData? data;

  StoreOrderResponseModel({
    this.key,
    this.msg,
    this.showImage,
    this.notificationCount,
    this.data,
  });

  factory StoreOrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StoreOrderResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoreOrderResponseModelToJson(this);
}

@JsonSerializable()
class OrderData {
  final int? id;
  @JsonKey(name: 'user_id')
  final int? userId;
  @JsonKey(name: 'user_name')
  final String? userName;
  @JsonKey(name: 'user_phone')
  final String? userPhone;
  @JsonKey(name: 'user_lat')
  final double? userLat;
  @JsonKey(name: 'user_lng')
  final double? userLng;
  @JsonKey(name: 'user_distance')
  final int? userDistance;
  @JsonKey(name: 'user_address')
  final String? userAddress;
  @JsonKey(name: 'provider_debt')
  final int? providerDebt;
  @JsonKey(name: 'provider_id')
  final int? providerId;
  @JsonKey(name: 'provider_name')
  final String? providerName;
  @JsonKey(name: 'provider_phone')
  final String? providerPhone;
  @JsonKey(name: 'provider_lat')
  final double? providerLat;
  @JsonKey(name: 'provider_lng')
  final double? providerLng;
  @JsonKey(name: 'provider_delivery_time')
  final int? providerDeliveryTime;
  @JsonKey(name: 'provider_country')
  final String? providerCountry;
  @JsonKey(name: 'provider_city')
  final String? providerCity;
  @JsonKey(name: 'provider_avatar')
  final String? providerAvatar;
  @JsonKey(name: 'provider_distance')
  final int? providerDistance;
  @JsonKey(name: 'delegate_id')
  final int? delegateId;
  @JsonKey(name: 'delgate_debt')
  final int? delegateDebt;
  @JsonKey(name: 'delegate_name')
  final String? delegateName;
  @JsonKey(name: 'delegate_phone')
  final String? delegatePhone;
  @JsonKey(name: 'delegate_lat')
  final double? delegateLat;
  @JsonKey(name: 'delegate_lng')
  final double? delegateLng;
  @JsonKey(name: 'delegate_distance')
  final int? delegateDistance;
  @JsonKey(name: 'status_map')
  final StatusMap? statusMap;
  final String? status;
  @JsonKey(name: 'status_f')
  final String? statusF;
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @JsonKey(name: 'payment_method_f')
  final String? paymentMethodF;
  @JsonKey(name: 'sub_total')
  final String? subTotal;
  final String? delivery;
  @JsonKey(name: 'value_added')
  final String? valueAdded;
  @JsonKey(name: 'total_before_promo')
  final String? totalBeforePromo;
  @JsonKey(name: 'total_after_promo')
  final String? totalAfterPromo;
  final String? duration;
  @JsonKey(name: 'is_rated')
  final bool? isRated;
  final int? rate;
  final String? desc;
  @JsonKey(name: 'order_date_time')
  final String? orderDateTime;
  @JsonKey(name: 'order_date')
  final String? orderDate;
  @JsonKey(name: 'order_time')
  final String? orderTime;
  @JsonKey(name: 'order_offers')
  final List<dynamic>? orderOffers;
  @JsonKey(name: 'order_services')
  final List<OrderService>? orderServices;

  OrderData({
    this.id,
    this.userId,
    this.userName,
    this.userPhone,
    this.userLat,
    this.userLng,
    this.userDistance,
    this.userAddress,
    this.providerDebt,
    this.providerId,
    this.providerName,
    this.providerPhone,
    this.providerLat,
    this.providerLng,
    this.providerDeliveryTime,
    this.providerCountry,
    this.providerCity,
    this.providerAvatar,
    this.providerDistance,
    this.delegateId,
    this.delegateDebt,
    this.delegateName,
    this.delegatePhone,
    this.delegateLat,
    this.delegateLng,
    this.delegateDistance,
    this.statusMap,
    this.status,
    this.statusF,
    this.paymentMethod,
    this.paymentMethodF,
    this.subTotal,
    this.delivery,
    this.valueAdded,
    this.totalBeforePromo,
    this.totalAfterPromo,
    this.duration,
    this.isRated,
    this.rate,
    this.desc,
    this.orderDateTime,
    this.orderDate,
    this.orderTime,
    this.orderOffers,
    this.orderServices,
  });

  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDataToJson(this);
}

@JsonSerializable()
class StatusMap {
  final bool? refused;
  @JsonKey(name: 'new')
  final bool? isNew;
  @JsonKey(name: 'in_way')
  final bool? inWay;
  final bool? finish;

  StatusMap({this.refused, this.isNew, this.inWay, this.finish});

  factory StatusMap.fromJson(Map<String, dynamic> json) =>
      _$StatusMapFromJson(json);

  Map<String, dynamic> toJson() => _$StatusMapToJson(this);
}

@JsonSerializable()
class OrderService {
  final int? id;
  @JsonKey(name: 'service_id')
  final int? serviceId;
  @JsonKey(name: 'service_title')
  final String? serviceTitle;
  @JsonKey(name: 'service_price')
  final int? servicePrice;
  @JsonKey(name: 'service_image')
  final String? serviceImage;
  final int? count;
  final String? total;
  @JsonKey(name: 'total_with_value')
  final String? totalWithValue;
  @JsonKey(name: 'value_added')
  final String? valueAdded;
  @JsonKey(name: 'provider_id')
  final int? providerId;
  @JsonKey(name: 'provider_name')
  final String? providerName;
  @JsonKey(name: 'provider_phone')
  final String? providerPhone;
  @JsonKey(name: 'provider_lat')
  final double? providerLat;
  @JsonKey(name: 'provider_lng')
  final double? providerLng;
  @JsonKey(name: 'provider_distance')
  final int? providerDistance;

  OrderService({
    this.id,
    this.serviceId,
    this.serviceTitle,
    this.servicePrice,
    this.serviceImage,
    this.count,
    this.total,
    this.totalWithValue,
    this.valueAdded,
    this.providerId,
    this.providerName,
    this.providerPhone,
    this.providerLat,
    this.providerLng,
    this.providerDistance,
  });

  factory OrderService.fromJson(Map<String, dynamic> json) =>
      _$OrderServiceFromJson(json);

  Map<String, dynamic> toJson() => _$OrderServiceToJson(this);
}
