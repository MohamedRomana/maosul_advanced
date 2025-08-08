import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_response_model.g.dart';

@JsonSerializable()
class CartResponseModel {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  @JsonKey(name: 'value_added')
  final int? valueAdded;
  final int? delivery;
  @JsonKey(name: 'delivery_time')
  final int? deliveryTime;
  @JsonKey(name: 'notification_count')
  final int? notificationCount;
  @JsonKey(name: 'provider_id')
  final int? providerId;
  final bool? cash;
  final bool? transfer;
  final bool? online;
  @JsonKey(name: 'not_now')
  final bool? notNow;
  @JsonKey(name: 'not_now_total')
  final int? notNowTotal;
  @JsonKey(name: 'not_now_duration')
  final int? notNowDuration;
  final List<Address>? addresses;
  final List<CartItem>? data;

  CartResponseModel({
    this.key,
    this.msg,
    this.showImage,
    this.valueAdded,
    this.delivery,
    this.deliveryTime,
    this.notificationCount,
    this.providerId,
    this.cash,
    this.transfer,
    this.online,
    this.notNow,
    this.notNowTotal,
    this.notNowDuration,
    this.addresses,
    this.data,
  });

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartResponseModelToJson(this);
}

@JsonSerializable()
class CartItem {
  final int? id;
  int? count;
  final int? price;
  final int? total;
  @JsonKey(name: 'total_with_value')
  final String? totalWithValue;
  @JsonKey(name: 'provider_id')
  final int? providerId;
  @JsonKey(name: 'provider_title')
  final String? providerTitle;
  @JsonKey(name: 'section_id')
  final int? sectionId;
  @JsonKey(name: 'section_title')
  final String? sectionTitle;
  @JsonKey(name: 'service_id')
  final int? serviceId;
  @JsonKey(name: 'service_title')
  final String? serviceTitle;
  final String? desc;
  @JsonKey(name: 'first_image')
  final String? firstImage;

  CartItem({
    this.id,
    this.count,
    this.price,
    this.total,
    this.totalWithValue,
    this.providerId,
    this.providerTitle,
    this.sectionId,
    this.sectionTitle,
    this.serviceId,
    this.serviceTitle,
    this.desc,
    this.firstImage,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemToJson(this);
}

@JsonSerializable()
class Address {
  final int? id;
  final String? title;
  final String? address;
  final double? lat;
  final double? lng;

  Address({this.id, this.title, this.address, this.lat, this.lng});

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
